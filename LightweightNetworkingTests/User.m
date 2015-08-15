//
//  User.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "User.h"

@implementation User

+ (NSDictionary *)mapping
{
    return @{
             @"avatar_url":     @"avatarURL",
             @"login":          @"login"
             };
}

+ (NSURL *)avatarURLFromDictionary:(NSString *)value
{
    return [NSURL URLWithString:value];
}

@end
