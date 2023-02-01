import logo from './logo.svg';
import './App.css';
import * as React from 'react';

function App() {
  return (
    <>
      <PropComponent
        name="Tracy"
        hobby="Gaming"
      />
    </>
  );
};

function PropComponent(prop){
  let [hobby, setHobby] = React.useState (false)

  if(hobby){
    return <>
      Hello, my name is {prop.name}.
      <br/>
      One of my hobbies is {prop.hobby}.

    <br/>
    <button onClick={()=>{
      setHobby(false)
    }}>Hide my hobby</button>
    </>
  }else{
    return<>
      Hello, my name is {prop.name}.
     
    <br/>
    <button onClick={()=>{
      setHobby(true)
    }}>My Hobby</button>
    </>
  }
}
export default App;