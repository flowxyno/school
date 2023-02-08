import logo from './logo.svg';
import './App.css';
import * as React from 'react';

function App() {
  return (
    <>
      <Security/>
    </>
  );
}

function Security() {
  let [pet1, setPet1] = React.useState("No data yet")
  let [pet2, setPet2] = React.useState("No data yet")
  let [species1, setSpecies1] = React.useState("No data yet")
  let [species2, setSpecies2] = React.useState("No data yet")
  let [status, setStatus] = React.useState("No data yet")


  React.useEffect(() => {
    fetch('https://aeolian-billowy-fern.glitch.me/') //this URL will change almost all the time
      .then((response) => response.json())
      .then((data) => {
        setPet1(data.myPets[0].name)
        setPet2(data.myPets[1].name)
        setSpecies1(data.myPets[0].type)
        setSpecies2(data.myPets[1].type)
        setStatus(data.myPets[0].status)
      });
  })

  return <> 
    Stephen's previous pets were named {pet1} which was a {species1} and {pet2} which was also a {species2}.
    Sadly the are both {status}.
  </>
}

export default App;
