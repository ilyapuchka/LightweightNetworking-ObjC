//
//  GitHub.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import LightweightNetworking;

#import "UsersResponse.h"

typedef void(^UsersResponseBlock)(UsersResponse *response);

@protocol GitHubClient

- (NSURLSessionDataTask *)getUsers:(UsersResponseBlock)completion;

@end

@interface NSURLSession (GitHub) <GitHubClient>

@end
