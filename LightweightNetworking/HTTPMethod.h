//
//  HTTPMethod.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#ifndef HTTPMETHOD_H_
#define HTTPMETHOD_H_

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, HTTPMethod){
    GET, POST, PUT, DELETE, HEAD
};

extern NSString *HTTPMethodString(HTTPMethod method);

#endif

