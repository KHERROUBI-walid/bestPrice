from fastapi import FastAPI, HTTPException, Query
from sqlalchemy import create_engine, Column, Integer, String, Float, DateTime
from sqlalchemy.orm import declarative_base
from sqlalchemy.orm import sessionmaker
from fastapi.middleware.cors import CORSMiddleware
from datetime import datetime
from sqlalchemy import func


# Configuration de la base de données MySQL
DATABASE_URL = "mysql+pymysql://root:@localhost/ebay_db"  # Remplace 'yourpassword' par ton mot de passe MySQL
engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

# Modèle pour les produits
class Product(Base):
    __tablename__ = "products"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    price = Column(Float)
    url = Column(String(500))
    image_produit = Column(String(500))

# Modèle pour les ventes
class Sale(Base):
    __tablename__ = "sales"
    id = Column(Integer, primary_key=True, index=True)
    product_id = Column(Integer)
    quantity = Column(Integer)
    sale_date = Column(DateTime, default=datetime.utcnow)  # Date avec un format datetime
    image_produit = Column(String(500))

# Création des tables si elles n'existent pas encore dans la base de données
Base.metadata.create_all(bind=engine)

# Initialisation de l'application FastAPI
app = FastAPI()

# Middleware CORS (pour autoriser le frontend React)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Route pour récupérer tous les produits
@app.get("/products")
def get_products():
    with SessionLocal() as db:  
        products = db.query(Product).all()
        return products
    

@app.get("/search_and_sort")
def search_and_sort_products(query: str = "", sort: str = ""):
    with SessionLocal() as db:
        query_filter = Product.title.like(f"%{query}%") if query else True  
        
        # Trier les résultats en fonction du paramètre sort
        if sort == "":
            get_products()
        elif sort == "asc":
            products = db.query(Product).filter(query_filter).order_by(Product.price.asc()).all()
        else:
            products = db.query(Product).filter(query_filter).order_by(Product.price.desc()).all()

        return products
    



@app.get("/top3-products")
def get_top_3_products():
    with SessionLocal() as db:
        # On récupère les produits avec le plus grand nombre de ventes
        top_products = (
            db.query(Product, func.sum(Sale.quantity).label("total_sales"))
            .join(Sale, Product.id == Sale.product_id)
            .group_by(Product.id)
            .order_by(func.sum(Sale.quantity).desc())  # Trie par nombre total de ventes
            .limit(3)  # Limiter aux 3 premiers produits
            .all()
        )

        # Retourner les produits avec les informations de ventes
        return [
            {"id": product.id, "title": product.title, "price": product.price, "total_sales": total_sales, "url": product.url, "image_produit": product.image_produit}
            for product, total_sales in top_products
        ]




