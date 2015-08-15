//
//  GitHubJSONRequest.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "GitHubJSONRequest.h"

@implementation GitHubJSONRequest

- (NSURL *)baseURL
{
    return [NSURL URLWithString:@"https://api.github.com"];
}

@end
