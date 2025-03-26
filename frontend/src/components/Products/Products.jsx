import React, { useState, useEffect } from "react";
import styled from "styled-components";

const SearchWrapper = styled.div`
  display: flex;
  justify-content: center;
  margin: 20px;
  gap: 20px;
`;

const Input = styled.input`
  width: 150px;
  padding: 10px;
  font-size: 1rem;
  border: 1px solid #ccc;
  border-radius: 5px;
`;

const Button = styled.button`
  padding: 10px 20px;
  font-size: 1rem;
  background-color: #4caf50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;

  &:hover {
    background-color: #45a049;
  }
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

const Products = () => {
  const [query, setQuery] = useState("");
  const [products, setProducts] = useState([]);
  const [sort, setSort] = useState("asc");
  const [minPrice, setMinPrice] = useState("");
  const [maxPrice, setMaxPrice] = useState("");
  const [debounceTimer, setDebounceTimer] = useState(null);

  // Fetch produits avec filtres et tri
  const fetchProducts = (searchTerm = query, min = minPrice, max = maxPrice) => {
    const url = `http://localhost:8000/search_and_sort?query=${searchTerm}&sort=${sort}&minPrice=${min}&maxPrice=${max}`;
    fetch(url)
      .then((response) => response.json())
      .then((data) => setProducts(data))
      .catch((error) => console.error("Error fetching search results:", error));
  };

  // Appel initial des produits
  useEffect(() => {
    fetchProducts();
  }, []);

  // Mise à jour des produits quand les filtres changent (automatique)
  useEffect(() => {
    fetchProducts(query, minPrice, maxPrice);
  }, [sort, minPrice, maxPrice]);

  // Gestion de la recherche avec debounce (500ms)
  const handleSearch = (e) => {
    const searchTerm = e.target.value;
    setQuery(searchTerm);

    if (debounceTimer) clearTimeout(debounceTimer);

    const timer = setTimeout(() => {
      fetchProducts(searchTerm, minPrice, maxPrice);
    }, 500);

    setDebounceTimer(timer);
  };

  // Gestion de la sélection du tri
  const handleSortChange = (sortOrder) => {
    setSort(sortOrder);
  };

  // Conversion des prix en nombre et gestion automatique du filtre
  const handleMinPriceChange = (e) => setMinPrice(e.target.value ? Number(e.target.value) : "");
  const handleMaxPriceChange = (e) => setMaxPrice(e.target.value ? Number(e.target.value) : "");

  return (
    <div>
      <h1 className="title">Nos Produits</h1>

      {/* Barre de recherche + filtres de prix */}
      <SearchWrapper>
        <Input
          type="text"
          placeholder="Rechercher un produit..."
          value={query}
          onChange={handleSearch}
        />
        <Input
          type="number"
          placeholder="Prix min"
          value={minPrice}
          onChange={handleMinPriceChange}
        />
        <Input
          type="number"
          placeholder="Prix max"
          value={maxPrice}
          onChange={handleMaxPriceChange}
        />
      </SearchWrapper>

      {/* Boutons de tri */}
      <SearchWrapper>
        <Button onClick={() => handleSortChange("asc")}>Du - au + cher</Button>
        <Button onClick={() => handleSortChange("desc")}>Du + au - cher</Button>
      </SearchWrapper>

      {/* Affichage des produits */}
      <ProductList>
        {products.length > 0 ? (
          products.map((product) => (
            <ProductCard key={product.id}>
              <ProductImage src="phone.jpg" alt={product.title} />
              <h3>{product.title}</h3>
              <p className="price">${product.price.toFixed(2)}</p>
            </ProductCard>
          ))
        ) : (
          <p>Aucun produit trouvé.</p>
        )}
      </ProductList>
    </div>
  );
};

export default Products;

