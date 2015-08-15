//
//  HTTPMethod.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "HTTPMethod.h"

NSString *HTTPMethodString(HTTPMethod method) {
    switch (method) {
        case GET:       return @"GET";
        case POST:      return @"POST";
        case PUT:       return @"PUT";
        case DELETE:    return @"DELETE";
        case HEAD:      return @"HEAD";
        default:        return nil;
    }
}