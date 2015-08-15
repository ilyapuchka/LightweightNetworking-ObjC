//
//  APIResponse.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import Foundation;

@protocol APIResponse <NSObject>

- (NSURLSessionDataTask *)task;
- (NSURLResponse *)response;
- (NSError *)error;
- (id)responseObject;
- (id)processedResponseObject;

- (instancetype)initWithTask:(NSURLSessionDataTask *)task
                    response:(NSURLResponse *)response
              responseObject:(id)responseObject
                       error:(NSError *)error;

- (id)processResponseObject:(NSError **)error;

@end

@interface SimpleAPIResponse: NSObject <APIResponse> {
    NSURLSessionDataTask *_task;
    NSURLResponse *_response;
    NSError *_error;
    id _responseObject;
    id _processedResponseObject;
}

@end

@interface JSONAPIResponse : SimpleAPIResponse

@end
