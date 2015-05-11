//
//  LibaryBridgeHelper.m
//  EncryptionTests3
//
//  Created by Alex Bechmann on 08/05/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

#import "StringEncryptionBridgeHelper.h"

@implementation StringEncryptionBridgeHelper

+(CCOptions) options {
    return kCCOptionPKCS7Padding;
}

@end
