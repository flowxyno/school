import logo from './logo.svg';
import './App.css';
import * as React from 'react';

function App() {
  return (
    <>
      <PastPets/>
    </>
  );
}

function PastPets() {
  let [dog, setDog] = React.useState("No data yet")


  React.useEffect(() => {
    fetch('https://inexpensive-snapdragon-pilot.glitch.me/') //this URL will change almost all the time
      .then((response) => response.json())
      .then((data) => {
        setDog(data.myPets[1].name)
      });
  })

  return <> 
    Let Tracy's Dog's name be: {dog}
  </>
}

export default App;
