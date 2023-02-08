import logo from './logo.svg';
import './App.css';
import * as React from 'react'

function App() {
  return (
    <>
      
    </>
  );
};

function PropUp(stuff) {
  return <>
    Hello, my name is {stuff.name}.
    <br/>
    I have a cute little dog named {stuff.pname} and he wears all {stuff.color} gear
  </>
}

export default App;