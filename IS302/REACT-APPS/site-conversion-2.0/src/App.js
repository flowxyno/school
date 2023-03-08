import logo from './logo.svg';
import './App.css';
import * as React from 'react';
import Card from '@mui/material/Card';
import Button from '@mui/material/Button';


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
			  <h1><b><u>Personal Projects:</u></b></h1>
			  <br/>
			  <Projects/>
			  <br/>
			  <br/>
		  </div>
		  <div className='AandH'>
			  <AandHSwitch/>
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
			<br/>
			<Button variant="contained" onClick={()=>{
			setCity(false)
			}}>Ellsworth</Button>
			</>
	  }else{
		return<>
		  <b><u>Forcast for Ellsworth, MI:</u></b>
			<br/>
			The forecast is: {shortForecast1}
			<br/>
			The temperature is: {temp1} degrees
	
			<br/>
			<br/>
			<Button variant='contained' onClick={()=>{
			setCity(true)
			}}>Olalla</Button>
		</>
	  }
	}

function AboutMe() {
	return <>
	<br/>
		<h2><b><u>A little about me:</u></b></h2>
		<p>
			A little bit about me. I was born in Ellsworth Michigan, which is a place that you can be completely forgiven 
			for having never heard of it, it is one of those blink and you miss it places. 
			<br/>
			I joined the Army at 17, and went to basic training in Ft Jackson, SC and from there on to Advanaced Individual
			Training (AIT) in Ft Gordon, GA. Since then I have been kind of all over the place with the bulk of my active 
			time in Ft. Lewis. 
			<br/>
			I started out in microwave
			line of site communications and from there went to the Army's first packet switched network and ended my 
			career doing team / network management for an entire portable ISP called a Joint Network Node (JNN).
		</p>
	</>
}

function Hobbies() {
	return <>
	<br/>
	<h2><b><u>Hobbies and interests:</u></b></h2>
	<br/>
	<ul>
		<li>Video Games</li>
			<ul>
				<li>Factory builders</li>
				<li>Survival</li>
				<li>First Person Shooters (FPS)</li>
				<li>Virtual Reality (VR)</li>
			</ul>
		<li>Board Games</li>
		<li>Role Playing Games</li>
			<ul>
				<li>Dungeons and Dragons (D&D)</li>
				<li>Pathfinder</li>
				<li>ShadowRun</li>
				<li>BattleTech</li>
			</ul>
		<li>Reading</li>
			<ul>
				<li>Sci-Fi</li>
				<li>Fantasy</li>
				<li>Horror</li>
			</ul>
		<li>Movies</li>
	</ul>
	
	</>
}

function Reading() {
	return <>
	<h2><b><u>Favorite Book Series:</u></b></h2>
	<br/>
	<ul>
		<li>Sci-Fi</li>
			<ul>
				<li>Expeditionary Series</li>
				<li>Old Man's War</li>
				<li>Legion of the Damned</li>
			</ul>
		<li>Fantasy</li>
			<ul>
				<li>Wheel of Time</li>
				<li>Dragonlance</li>
				<li>Forgotten Realms</li>
			</ul>
		<li>Unsure of Genre</li>
			<ul>
				<li>Magitech Series</li>
			</ul>
	</ul>
	
	</>
}

function AandHSwitch() {
	let [tog, setTog] = React.useState(false)
	let [count,setCount] = React.useState(0)
	
	if(tog){
		return <>
			<Hobbies/>
	
			<br/>
			<br/>
			<Button variant="contained" onClick={()=>{
			setTog(false)
			}}>About Me</Button>
			</>
	  }else{
		return<>
		  	<AboutMe/>
	
			<br/>
			<br/>
			<Button variant='contained' onClick={()=>{
			setTog(true)
			}}>Hobbies</Button>
		</>
	  }
}

function Projects(){
    let [data, setData] = React.useState(undefined)

    React.useEffect(() => {
      fetch('http://18.237.100.160:3000/')
        .then((response) => response.json())
        .then((data) => {
          setData(data)
        });
    })

  return <> 
    	{data && <Project project={data[0]}/>}
	<br/>
    	{data && <Project project={data[1]}/>}
	<br/>
		{data && <Project project={data[2]}/>}
  </>
}

function Project(props){
  return <div style={{border: "1px solid black"}}>
	<Card>
    	Name: {props.project.name}
    		<ul>
      			<li>Language: {props.project.languages}</li>
      			<li>Description: {props.project.description}</li>
	  			<li>URL: <a href={props.project.url}>Project Site</a></li>
    		</ul> 
	</Card>
  </div>
}

export default App;
