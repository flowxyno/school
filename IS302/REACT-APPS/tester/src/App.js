import logo from './logo.svg';
  import './App.css';
  import * as React from 'react';

  function App() {
      return (
          <>
            <Greetings/>
          </>
        );
    };

    function Greetings(){
        let [fname, setFname] = React.useState("No data yet")
        let [lname, setLname] = React.useState("No data yet")
        let [loc, setLoc] = React.useState("No data yet")

        React.useEffect(() => {
            fetch('http://35.166.184.225:3000') // You will get this url from the glitch preview window
                .then((response) => response.json())
                .then((data) => {
                    setFname(data[1].FirstName)
                    setLname(data[1].LastName)
                    setLoc(data[1].City)
                });
        })

        return <>
            Hello, my name is {fname} {lname} and I live in {loc}
        </>
    }

  export default App;