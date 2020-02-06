import React, { Component } from 'react';
import BarChart from './components/BarChart.js'
import JimmyG from './components/JimmyG.js'
import './App.css';

class App extends Component {
  render(){
    return (
      <div className="App">
        <BarChart />
        <JimmyG />
      </div>
    );
  }
}

export default App;
