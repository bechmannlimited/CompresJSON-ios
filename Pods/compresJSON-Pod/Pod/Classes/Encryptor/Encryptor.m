//
//  Encryptor.m
//  Pods
//
//  Created by Alex Bechmann on 11/05/2015.
//
//

#import "Encryptor.h"

@implementation Encryptor

+(NSString *) encrypt:(NSString *)str key: (NSString *) key {
    
    StringEncryption *crypto = [[StringEncryption alloc] init];
    
    NSData *messageData = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSData *keyData = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    CCOptions padding = kCCOptionPKCS7Padding;
    
    NSData *encryptedData = [crypto encrypt:messageData key:keyData padding:&padding];
    
    return [self base64Encode: encryptedData];
    
}

+(NSString *) decrypt:(NSString *)str key: (NSString *) key{
    
    StringEncryption *crypto = [[StringEncryption alloc] init];
    
    NSData *keyData = [str dataUsingEncoding:NSUTF8StringEncoding];
    CCOptions padding = kCCOptionPKCS7Padding;
    
    NSData *messageData = [self base64Decode:str];
    
    NSData *decryptedData = [crypto decrypt: messageData key:keyData padding:&padding];
    
    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
}

+(NSString *) base64Encode: (NSData *) data {
    
    return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

+(NSData *) base64Decode: (NSString *) str {
    
    return [NSData dataWithBase64EncodedString:str];
}

@end
