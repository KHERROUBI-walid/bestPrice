import React, { useState, useEffect } from "react";
import styled from "styled-components";

const Title = styled.h1`
  margin-top: 70px;
`;

const ProductList = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 20px;
  padding: 20px;
`;

const ProductCard = styled.div`
  background-color: white;
  padding: 15px;
  text-align: center;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
`;

const ProductImage = styled.img`
  width: 100%;
  height: 300px;
  object-fit: cover;
  border-radius: 10px;
  margin-bottom: 10px;
`;

const ProductButton = styled.a`
  display: inline-block;
  margin-top: 10px;
  padding: 10px 15px;
  background-color: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  
  &:hover {
    background-color: #0056b3;
  }
`;

const TopProducts = () => {
  const [topProducts, setTopProducts] = useState([]);

  useEffect(() => {
    // Récupérer les top 3 produits depuis l'API
    fetch("http://localhost:8000/top3-products")
      .then((response) => response.json())
      .then((data) => setTopProducts(data))
      .catch((error) => console.error("Erreur lors de la récupération des top 3 produits:", error));
  }, []);

  return (
    <div>
      <Title>
        <h1>Bienvenue</h1>
        <h2>Top 3 produits</h2>
      </Title>

      <ProductList>
        {topProducts.map((product) => (
          <ProductCard key={product.id}>
            <ProductImage src={product.image_produit} alt={product.title} />
            <h3>{product.title}</h3>
            <p className="price">${product.price.toFixed(2)}</p>
            <p>Total des ventes: {product.total_sales}</p>
            <ProductButton href={product.url} target="_blank" rel="noopener noreferrer">
              Voir le produit
            </ProductButton>
          </ProductCard>
        ))}
      </ProductList>
    </div>
  );
};

export default TopProducts;
