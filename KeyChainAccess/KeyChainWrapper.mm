//
//  KeyChainWrapper.cpp
//  KeyChainAccess
//
//  Created by Donew on 16/3/7.
//  Copyright © 2016年 Donew. All rights reserved.
//

#include "KeychainItemWrapper.h"
#include "KeyChainWrapper.h"


const void* getKeyChainItem(const char* identifier, const char* accessGroup, const char* defaulValueData){
    KeychainItemWrapper *keyChainItem = [[KeychainItemWrapper alloc]initWithIdentifier:[NSString stringWithUTF8String:identifier] accessGroup:[NSString stringWithUTF8String:accessGroup]];
    
    NSString *strUUID = [keyChainItem objectForKey:(id)kSecValueData];
    if(strUUID == nil || [strUUID isEqualToString:@""])
    {
        [keyChainItem setObject:[NSString stringWithUTF8String:defaulValueData] forKey:(id)kSecValueData];
        strUUID = [NSString stringWithUTF8String:defaulValueData];
    }
    [keyChainItem release];
    
    return (void*)[strUUID cStringUsingEncoding:NSUTF8StringEncoding];
}