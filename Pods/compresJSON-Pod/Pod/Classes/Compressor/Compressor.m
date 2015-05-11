//
//  Compressor.m
//  Pods
//
//  Created by Alex Bechmann on 11/05/2015.
//
//

#import "Compressor.h"

@implementation Compressor

+(NSString *) compress: (NSString *) str {
    
    NSData *data = [str dataUsingEncoding:NSASCIIStringEncoding];
    
    NSError *error;
    NSData *compressedData = [data bbs_dataByDeflatingWithError:&error];
    
    return [self base64Encode:compressedData];
}

+(NSString *) decompress: (NSString *) str {
    
    NSData *data = [self base64Decode:str];
    
    NSError *error;
    NSData *decompressedData = [data bbs_dataByInflatingWithError:&error];
    
    return [[NSString alloc] initWithData:decompressedData encoding:NSASCIIStringEncoding];
}

+(NSString *) base64Encode: (NSData *) data {
    
    return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}

+(NSData *) base64Decode: (NSString *) str {
    
    return [NSData dataWithBase64EncodedString:str];
}

@end
