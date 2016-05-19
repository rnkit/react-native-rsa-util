//
//  ReactNativeRSAUtil.m
//  ReactNativeRSAUtil
//
//  Created by SimMan (liwei0990@gmail.com) on 5/17/16.
//  Copyright © 2016 TounaApp. All rights reserved.
//

#import "ReactNativeRSAUtil.h"
#import "RSAUtil.h"
#import "RCTLog.h"
#import "RCTBridgeModule.h"

@interface ReactNativeRSAUtil() <RCTBridgeModule>
@end

@implementation ReactNativeRSAUtil

RCT_EXPORT_MODULE(ReactNativeRSAUtil)

RCT_EXPORT_METHOD(encryptStringWithPublickKey:(NSString *)str
                  publicKey:(NSString *)pubKey
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    
    if (!str || !pubKey) {
        reject(@"10001", @"str or pubKey is nil", [NSError errorWithDomain:@"str or pubKey is nil" code:10001 userInfo:nil]);
        return;
    }
    
    NSString *data = [RSAUtil encryptString:str publicKey:pubKey];
    
    if ( data ) {
        resolve(data);
    } else {
        reject(@"10002", @"encryptString is nil!", [NSError errorWithDomain:@"encryptString is nil!" code:10002 userInfo:nil]);
    }
}

RCT_EXPORT_METHOD(decryptStringWithPublicKey:(NSString *)str
                  publicKey:(NSString *)pubKey
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    
    if (!str || !pubKey) {
        reject(@"10001", @"str or pubKey is nil", [NSError errorWithDomain:@"str or pubKey is nil" code:10001 userInfo:nil]);
        return;
    }
    
    NSString *data = [RSAUtil decryptString:str publicKey:pubKey];
    
    if ( data ) {
        resolve(data);
    } else {
        reject(@"10004", @"decryptString is nil!", [NSError errorWithDomain:@"decryptString is nil!" code:10004 userInfo:nil]);
    }
}

RCT_EXPORT_METHOD(encryptStringWithPrivateKey:(NSString *)str
                  privateKey:(NSString *)priKey
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    
    if (!str || !priKey) {
        reject(@"10001", @"str or priKey is nil", [NSError errorWithDomain:@"str or priKey is nil" code:10001 userInfo:nil]);
        return;
    }
    
    NSString *data = [RSAUtil encryptString:str privateKey:priKey];
    
    if ( data ) {
        resolve(data);
    } else {
        reject(@"10002", @"encryptString is nil!", [NSError errorWithDomain:@"encryptString is nil!" code:10002 userInfo:nil]);
    }
}

RCT_EXPORT_METHOD(decryptStringWithPrivateKey:(NSString *)str
                  privateKey:(NSString *)priKey
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {
    
    if (!str || !priKey) {
        reject(@"10001", @"str or priKey is nil", [NSError errorWithDomain:@"str or priKey is nil" code:10001 userInfo:nil]);
        return;
    }
    
    NSString *data = [RSAUtil decryptString:str privateKey:priKey];
    
    if ( data ) {
        resolve(data);
    } else {
        reject(@"10004", @"decryptString is nil!", [NSError errorWithDomain:@"decryptString is nil!" code:10004 userInfo:nil]);
    }
}

@end
