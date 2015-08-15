//
//  GitHub.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "GitHub.h"
#import "UsersRequest.h"

@implementation NSURLSession (GitHub)

- (NSURLSessionDataTask *)getUsers:(UsersResponseBlock)completion;
{
    UsersRequest *request = [[UsersRequest alloc] init];
    NSURLSessionDataTask *task = [self dataTaskWithAPIRequest:request completion:completion];
    [task resume];
    return task;
}

@end
