from sqlalchemy import create_engine, Column, Integer, String, Float
from sqlalchemy.orm import declarative_base
from sqlalchemy.orm import sessionmaker
import requests

DATABASE_URL = "mysql+mysqlconnector://root:root@db:3306/mydatabase"



engine = create_engine(DATABASE_URL)
Session = sessionmaker(bind=engine)
session = Session()

# Définition du modèle Product
Base = declarative_base()

class Product(Base):
    __tablename__ = "products"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(255))
    price = Column(Float)
    url = Column(String(500))
    image_produit = Column(String(500))

# Création de la table dans la bdd
Base.metadata.create_all(engine)

access_token = 'v^1.1#i^1#r^0#p^3#I^3#f^0#t^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'

url = 'https://api.ebay.com/buy/browse/v1/item_summary/search'

params = {
    'q': 'samsung',  
    'limit': '20',
}

# En-têtes de la requête
headers = {
    'Authorization': f'Bearer {access_token}',
    'Content-Type': 'application/json',
}

# Envoi de la requête GET
response = requests.get(url, headers=headers, params=params)

# Vérification du statut de la réponse
if response.status_code == 200:
    data = response.json()
    items = data.get('itemSummaries', [])
    for item in items:
        title = item.get('title', 'N/A')
        price = float(item.get('price', {}).get('value', 0.0))
        item_url = item.get('itemWebUrl', 'N/A')
        image_url = item.get('image', {}).get('imageUrl', 'N/A')

        # Création d'une nouvelle instance de Product
        new_product = Product(
            title=title,
            price=price,
            url=item_url,
            image_produit=image_url
        )

        # Ajout du produit à la session
        session.add(new_product)

    # Validation de la transaction
    session.commit()

    inserted_products = session.query(Product).all()
    for product in inserted_products:
        print(f'Titre: {product.title}')
        print(f'Prix: {product.price} €')
        print(f'URL de l\'article: {product.url}')
        print(f'URL de l\'image: {product.image_produit}')
        print('-' * 50)

    print("Les produits ont été insérés avec succès dans la base de données.")
else:
    print(f'Erreur {response.status_code}: {response.text}')
