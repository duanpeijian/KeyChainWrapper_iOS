//
//  KeyChainWrapper.h
//  KeyChainAccess
//
//  Created by Donew on 16/3/7.
//  Copyright © 2016年 Donew. All rights reserved.
//

#ifndef KeyChainWrapper_h
#define KeyChainWrapper_h

#ifdef __cplusplus
extern "C"
{
#endif

    const void* getKeyChainItem(const char* identifier, const char* accessGroup, const char* defaulValueData);
    
#ifdef __cplusplus
}
#endif

#endif /* KeyChainWrapper_h */
