import logo from './logo.svg';
import './App.css';
import * as React from 'react';

function App() {
  return (
    <>
      <NewComponent/>
    </>
  );
};

function NewComponent() {
  let [count, setCount] = React.useState (0)

  return <>
      <button onClick={()=>{setCount(count + 1)}}>Click Me</button>
      <br/>
      I've been clicked {count} amount of times!
    </>
}

export default App;
