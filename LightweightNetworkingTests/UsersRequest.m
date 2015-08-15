//
//  UsersRequest.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "UsersRequest.h"
#import "UsersResponse.h"

@implementation UsersRequest

- (HTTPMethod)method
{
    return GET;
}

- (NSString *)path
{
    return @"users";
}

- (Class)responseClass
{
    return [UsersResponse class];
}

@end
