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
  let [time, setTime] = React.useState("No data yet")

  React.useEffect(() => {
    fetch('https://heartbreaking-silly-continent.glitch.me/') //this URL will change almost all the time
      .then((response) => response.json())
      .then((data) => {
        setIntrud(data.dataPoints[0].intruders)
        setTime(data.dataPoints[0].time)
      });
  })

  return <> 
    There were {intrud} intruders in the house at {time}
  </>
}

export default App;
