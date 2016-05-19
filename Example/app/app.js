/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

import React, {
  AppRegistry,
  Component,
  StyleSheet,
  Text,
  View
} from 'react-native';

import ReactNativeRSAUtil from 'react-native-rsa-util'

const publicKey = 'xxxxxxxxxxx'

export default class Example extends Component {

  constructor(props) {
    super(props);

    this.state = {
      encryptData: '',
      decrtptData: ''
    };
  }

  componentDidMount() {
    const data = 'www.sex.com';
    let encryptData = null,
      decrtptData = null;

    ReactNativeRSAUtil.encryptString(data, publicKey, (error, data) => {
      if (error) {
        console.error(error);
      } else {
        encryptData = data;
        console.log('encryptString: ' + data);
        ReactNativeRSAUtil.decryptString('glr4Fs3Z+Gf0wjF2bD6+cj68jsXKu59RlknVXqQH7AW8W3ezaewX+eb5rEYuZ7vYvpzWIXGlTWW/9NweZmOzqMrHAr2i2YuEp+b5VZkV3vfB3QNc/kZrDU5lHlD0+hQXNHZgaYFMjJxSlCV3zOFJUbJ052hB13xlfoScDstVP78=', publicKey, (error, data) => {
          if (error) {
            console.warn('decryptString error .....');
            console.warn(error);
          } else {
            console.log('decryptString: ' + data);
            decrtptData = data;

            this.setState({
              encryptData: encryptData,
              decrtptData: decrtptData
            });
          }
        });
      }
    });
  }

  render() {

    return (
      <View style={styles.container}>
        <Text style={styles.text}>
          data:  {this.state.data}
        </Text>
        <Text style={styles.text}>
          encryptData: {this.state.encryptData}
        </Text>
        <Text style={styles.text}>
          decrtptData: {this.state.decrtptData}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  text: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
});