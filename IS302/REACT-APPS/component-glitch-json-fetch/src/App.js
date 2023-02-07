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
  let [intrud, setIntrud] = React.useState("No data yet")

  React.useEffect(() => {
    fetch('https://shimmering-nutritious-bait.glitch.me/')
      .then((response) => response.json())
      .then((data) => {
        setIntrud(data.dataPoints[1])
      });
  })

  return <> 
    The forecast is: { intrud }
  </>
}

export default App;
