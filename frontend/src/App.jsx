import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom"; 
import Header from "./components/Header/header";
import "./App.css";
import TopProducts from "./components/TopProducts/TopProducts";
import Products from "./components/Products/Products"; 

const App = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    fetch("http://localhost:8000/products")
      .then((response) => response.json())
      .then((data) => setProducts(data))
      .catch((error) => console.error("Error fetching products:", error));
  }, []);

  return (
    <Router>
      <div className="home-page">
        <Header />
        <Routes>
          <Route path="/" element={<TopProducts />} />
          <Route path="/products" element={<Products />} />
        </Routes>
      </div>
    </Router>
  );
};

export default App;
