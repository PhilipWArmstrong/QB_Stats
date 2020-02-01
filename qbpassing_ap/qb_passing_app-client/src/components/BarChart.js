import React, { Component } from 'react';
import Chart from 'chart.js'

class BarChart extends Component {

    componentDidMount() {
        this.getData();
    }

    getData = () => {
        fetch('http://localhost:3000/quarterbacks/1')                                        
            .then(response => response.json())                                            
            .then(json => this.prepareData(json))                                              
            .then(data => this.createChart(data));
    }

    prepareData = (data) => {
        const chartData = {
            labels: [],
            datasets: [
                {
                    label: 'Highest Passing Attempt',
                    data: [],
                    lineTension: 0,
                    backgroundColor: 'rgb(225,184,28)',
                    borderColor: 'rgb(227,24,55)',
                    opacity: '0.2'
                }, 
                {
                    label: 'Average Passing Yards Per Game',
                    data: [],
                    borderColor: 'rgb(0,0,0)'
                }
            ]
        }

        data.yards.forEach(yard => {
            chartData.labels.push(yard.id);
            chartData.datasets[0].data.push(yard.highest);
            chartData.datasets[1].data.push(yard.lowest);
        })

        console.log(chartData)
        return chartData
    }

    createChart (data) {
        const ctx = document.querySelector('#yards')
        const tempsChart = new Chart(ctx, {
            type: 'line',
            data: data
        })
    }

    render () {
        return (
        <>
            <h1>Patrick Mahomes Passing Yards By Week</h1>
            <canvas id="yards" width="300" height="100"></canvas>
        </>
        )
    }
}

export default BarChart;