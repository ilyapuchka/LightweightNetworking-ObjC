//
//  UsersResponse.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import LightweightNetworking;
#import "User.h"

@interface UsersResponse : JSONAPIResponse

- (NSArray *)users;

@end
