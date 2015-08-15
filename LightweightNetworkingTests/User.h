//
//  User.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import Foundation;

#import "NSObject+JSONSerialization.h"

@interface User : NSObject

@property (nonatomic, copy) NSURL *avatarURL;
@property (nonatomic, copy) NSString *login;

@end
