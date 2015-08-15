//
//  APIClient.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import Foundation;

#import <LightweightNetworking/APIRequest.h>
#import <LightweightNetworking/APIResponse.h>

typedef void(^APIClientCompletionBlock)(id<APIResponse> response);

@protocol APIClient <NSObject>

- (NSURLSessionDataTask *)dataTaskWithAPIRequest:(id<APIRequest>)request
                                      completion:(APIClientCompletionBlock)completion;

@end

@interface NSURLSession(APIClient) <APIClient>

@end