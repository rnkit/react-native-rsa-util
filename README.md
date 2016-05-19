# react-native-rsa-util
rsa util for iOS and Android

## How To Use This

### 1. npm install this module

```
npm i react-native-rsa-util
```

### 2. use rnpm to link project file

```
rnpm link react-native-rsa-util
```

### 3. import react-native-rsa-util

```
import ReactNativeRSAUtil from 'react-native-rsa-util';
```

### 4. use it !!!

#### encryptStringWithPublicKey
```
ReactNativeRSAUtil.encryptStringWithPublicKey(content, RSA_PUBLIC_KEY)
    .then((error, data) => {
        if ( !error ) {
            console.log(data);
        }
    });
```

#### decryptStringWithPublicKey
```
ReactNativeRSAUtil.decryptStringWithPublicKey(content, RSA_PUBLIC_KEY)
    .then((error, data) => {
        if ( !error ) {
            console.log(data);
        }
    });
```

#### encryptStringWithPrivateKey
```
ReactNativeRSAUtil.encryptStringWithPrivateKey(content, RSA_PRIVATE_KEY)
    .then((error, data) => {
        if ( !error ) {
            console.log(data);
        }
    });
```

#### decryptStringWithPrivateKey
```
ReactNativeRSAUtil.decryptStringWithPrivateKey(content, RSA_PRIVATE_KEY)
    .then((error, data) => {
        if ( !error ) {
            console.log(data);
        }
    });
```