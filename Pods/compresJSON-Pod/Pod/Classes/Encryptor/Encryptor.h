//
//  Encryptor.h
//  Pods
//
//  Created by Alex Bechmann on 11/05/2015.
//
//

#import <Foundation/Foundation.h>
#import "StringEncryption.h"
#import "NSData+Base64.h"

@interface Encryptor : NSObject

+(NSString *) encrypt: (NSString *) str key: (NSString *) key;
+(NSString *) decrypt: (NSString *) str key: (NSString *) key;

@end
