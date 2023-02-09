import logo from './logo.svg';
import './App.css';
import * as React from 'react';

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
			  <p id="wc"><WeatherComponent/></p>
		  </div>
		  <div className="text" >
			  <br/>
			  <h1><b><u>Personal Projects:</u></b></h1>
			  <br/>
			  <Projects/>
			  <br/>
			  <br/>
			  <h2><b><u>Hobbies and interests</u></b></h2>
			  <br/>
			  
			  <br/>
		  </div>
		  <div>

		  </div>
	  </div>

	  <footer>
		  <a href="Contact_us.html">Contact Us</a>
	  </footer>
   </>
  );
}

function WeatherComponent(){
	let [shortForecast, setShortForecast] = React.useState("No data yet")
	let [temp, setTemp] = React.useState("No data yet")
	let [shortForecast1, setShortForecast1] = React.useState("No data yet")
	let [temp1, setTemp1] = React.useState("No data yet")
	let [city, setCity] = React.useState(true)

	React.useEffect(() => {
		fetch('https://api.weather.gov/gridpoints/SEW/115,60/forecast/hourly')
		  .then((response) => response.json())
		  .then((data) => {
			let firstPeriod = data.properties.periods[0]
			setShortForecast(firstPeriod.shortForecast)
			setTemp(firstPeriod.temperature)
			});

		fetch('https://api.weather.gov/gridpoints/APX/39,65/forecast/hourly')
		  .then((response) => response.json())
		  .then((data) => {
			let firstPeriod = data.properties.periods[0]
			setShortForecast1(firstPeriod.shortForecast)
			setTemp1(firstPeriod.temperature)
			//console.log(firstPeriod.temperature)
		  });
	  })
	

	  if(city){
		return <>
			<b><u>Forcast for Olalla, WA:</u></b>
			<br/>
			The forecast is: {shortForecast}
			<br/>
			The temperature is: {temp} degrees
	
			<br/>
			<button onClick={()=>{
			setCity(false)
			}}>Ellsworth</button>
			</>
	  }else{
		return<>
		  <b><u>Forcast for Ellsworth, MI:</u></b>
			<br/>
			The forecast is: {shortForecast1}
			<br/>
			The temperature is: {temp1} degrees
	
			<br/>
			<button onClick={()=>{
			setCity(true)
			}}>Olalla</button>
		</>
	  }
	}

function AboutMe() {
	return <>
		<h2><b><u>A little about me:</u></b></h2>
		<p>
			A little bit about me. I was born in Ellsworth Michigan, which is a place that you can be completely forgiven for having never heard of it, 
			it is one of those blink and you miss it places. 
		</p>
	</>
}

function Hobbies() {
	return <>
	<h2><b><u>Hobbies and interests:</u></b></h2>

	This is also a test
	</>
}

function Projects(){
    let [data, setData] = React.useState(undefined)

    React.useEffect(() => {
      fetch('https://sideways-burnt-meal.glitch.me')
        .then((response) => response.json())
        .then((data) => {
          setData(data)
        });
    })

  return <> 

    {data && <Project project={data.projects[0]}/>}
	<br/>
    {data && <Project project={data.projects[1]}/>}
	<br/>
    {data && <Project project={data.projects[2]}/>}
  </>
}

function Project(props){
  return <div style={{border: "1px solid black"}}>
    Name: {props.project.name}
    <ul>
      <li>Language: {props.project.languages[0]}</li>
      <li>Description: {props.project.description}</li>
    </ul> 
  </div>
}

export default App;
