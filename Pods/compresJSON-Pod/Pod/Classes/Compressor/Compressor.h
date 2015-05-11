//
//  Compressor.h
//  Pods
//
//  Created by Alex Bechmann on 11/05/2015.
//
//

#import <Foundation/Foundation.h>
#import "NSData+zlib.h"
#import "NSData+Base64.h"

@interface Compressor : NSObject

+(NSString *) compress: (NSString *) str;
+(NSString *) decompress: (NSString *) str;

@end
