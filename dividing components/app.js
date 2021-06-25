import React from 'react' ;
import Logo from "./logo.png";

export default function Header() {
  return (
    <header>
      <div className="logo">
        <img src={Logo} alt="Image: Logo" />
      </div>
      <ul className="navigation">
        <li>
          <a>Homepage</a>
        </li>
        <li>
          <a>Team</a>
        </li>
        <li>
          <a>Services</a>
        </li>
        <li>
          <a>Contact</a>
        </li>
      </ul>
      <div className="search-bar">
        <form method="post" action="/search">
          <p>
            <label htmlFor="q">Search:</label>
            <input type="text" id="q" name="q" />
          </p>
          <input type="submit" value="Search" />
        </form>
      </div>
    </header>
  );
}