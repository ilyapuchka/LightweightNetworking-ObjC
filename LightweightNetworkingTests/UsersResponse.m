//
//  UsersResponse.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "UsersResponse.h"

@implementation UsersResponse

- (id)processResponseObject:(NSError **)error;
{
    NSError *__error;
    id processedResponseObject = [super processResponseObject:&__error];
    if (__error || ![processedResponseObject isKindOfClass:[NSArray class]]) {
        if (error) *error = __error;
        return nil;
    }
    else {
        return [User withArray:processedResponseObject];
    }
}

- (NSArray *)users
{
    return self.processedResponseObject;
}

@end
