import logo from './logo.svg';
import './App.css';

function App() {
  return (
   <>
    <header>
		  <img src="banner.jpg" alt="" useMap="#home" id="banner" />
		  <map name="home">
			  <area shape="rect" coords="10, 10, 400, 200" href="Home_Page.html" alt="Home Page" />
		  </map>
		  <nav className="horizontal">
			  <ul>
				  <li><a href="Home_Page.html">Home</a></li>
				  <li><a href="Tracy.html">Tracy</a></li>
				  <li><a href="Brittany.html">Brittany</a></li>
				  <li><a href="Charlie.html">Charlie</a></li>
				  <li><a href="Matthew.html">Matthew</a></li>
			  </ul>
		  </nav>
	  </header>

	  <div className="wrapper">
		  <div >
			  <figure className="image">
				  <img src="TPhoto.jpg" alt="" />
				  <figcaption> Tracy Harvey </figcaption>
			  </figure>
		  </div>
		  <div className="text" >
			  <br/>
			  <h1>Heading</h1>
			  <br/>
			  <p>Text.</p>
			  <br/>
			  <br/>
			  <h2>Heading</h2>
			  <br/>
			  <p>Text.</p>
			  <br/>
		  </div>
	  </div>

	  <footer>
		  <a href="Contact_us.html">Contact Us</a>
	  </footer>
   </>
  );
}

export default App;
