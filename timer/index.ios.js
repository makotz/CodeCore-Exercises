// var React = require('react');
// var Component = React.Component;
import React, {Component} from 'react';
import {Text, View, AppRegistry, TouchableHighlight, StyleSheet} from 'react-native';

const millisec = require('millisec')

// var Timer = React.createClass({
//     render: function() {
//         return <View>
//                             <Text>Awesome Timer</Text>
//                      </View>
//     }
// });

class Timer extends Component {
    constructor(props) {
        super(props);
        this.state = {time: 0, startTime: null, btnLabel: "Start"};

        // we have to pre-bind the definition of 'pressHandler' to 'this' which is the Timer object in this case.
        // Otherwise, 'this' inside the 'pressHandler' function will refer to the TouchableHighlight component
        this.pressHandler = this.pressHandler.bind(this);
    }
    start() {
        this.setState({startTime: new Date(), btnLabel: "Stop"})
        this.interval = setInterval(() => {
            let ms = new Date() - this.state.startTime
            this.setState({time: millisec(ms).format('hh : mm : ss')})
        }, 20);
    }
    stop() {
        clearInterval(this.interval);
        this.setState({time: 0})
    }
    pressHandler() {
        // alert('Cicked');
        // console.log(this);
        if(this.state.time === 0) {
            this.setState({startTime: new Date()});
            this.start();
        } else {
            this.stop();
        }
    }
    render() {
        return <View style={styles.container}>
                            <Text>{this.state.time.toString()}</Text>
                            <TouchableHighlight onPress={this.pressHandler}
                                                                    underlayColor="grey"
                                                                    style={styles.startStopButton}>
                                <Text>{this.state.btnLabel}</Text>
                            </TouchableHighlight>
                     </View>
    }
}

var styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: "center",
        alignItems: "center"
    },
    startStopButton: {
        width: 50,
        height: 30,
        borderWidth: 1,
        borderRadius: 5,
        justifyContent: "center",
        alignItems: "center"
    }
});

// AppRegistry.registerComponent("timer", function() {return Timer});
AppRegistry.registerComponent("timer", () => Timer);
