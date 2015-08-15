//
//  APIRequest.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import Foundation;

#import <LightweightNetworking/HTTPMethod.h>

@protocol APIResponse;

@protocol APIRequest <NSObject>

- (HTTPMethod)method;
- (NSURL *)baseURL;
- (NSString *)path;
- (NSDictionary *)parameters;
- (NSDictionary *)headers;
- (Class<APIResponse>)responseClass;

@end

@interface SimpleAPIRequest : NSObject <APIRequest>

@end

@interface JSONAPIRequest : SimpleAPIRequest

@end
