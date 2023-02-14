import logo from './logo.svg';
import './App.css';
import * as React from 'react'
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';

function App() {
  return (
    <>
      <Cards/>
      <br/>
      <Cards/>
      <br/>
      <Cards/>
      <br/>
      <Cards/>
    </>
  );
};

function Cards() {
  return <>
    <Card id="test">
      This is the card content !!!!
    </Card>
  </>
}

export default App;