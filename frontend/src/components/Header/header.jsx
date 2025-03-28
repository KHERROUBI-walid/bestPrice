import React from "react";
import { Link } from "react-router-dom";
import styled from "styled-components";

const HeaderStyle = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 10px 20px;
  background-color: #333;
  color: white;
`;

const Logo = styled.div`
  font-size: 1.5rem;
  font-weight: bold;
`;

const Nav = styled.nav`
  a {
    color: white;
    text-decoration: none;
    margin: 0 10px;
    &:hover {
      text-decoration: underline;
    }
  }
`;

const Header = () => {
  return (
    <HeaderStyle>
      <Logo>
        <h1>Best Price</h1>
      </Logo>
      <Nav>
        <Link to="/">Home</Link>
        <Link to="/products">Products</Link>
        <Link to="/">Average Price</Link>
      </Nav>
    </HeaderStyle>
  );
};

export default Header;
