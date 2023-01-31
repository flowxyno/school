import logo from './logo.svg';
import './App.css';
import * as React from 'react';

function App() {
  return (
    <>
      <ComponentWithProps
        name="Tracy"
        favColor="Orange"
      />
      <br/>
      <br/>
      <ComponentWithProps2
        name="Tracy"
        favColor="Orange"
      />
    </>
  );
};

function ComponentWithProps (props) {
  return <>
    Hello, my name is {props.name}. My favorite color is {props.favColor}.
  </>
}

function ComponentWithProps2 (props) {
  return <>
    Hello, my name is {props.name}. My favorite color is <span style={{color: props.favColor}}>{props.favColor}</span>.
  </>
}

export default App;

