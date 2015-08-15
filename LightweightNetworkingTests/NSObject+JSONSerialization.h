//
//  NSObject+JSONSerialization.h
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

@import Foundation;

@interface NSObject (JSONSerialization)

+ (NSDictionary *)mapping;
+ (instancetype)withDictionary:(NSDictionary *)dictionary;
+ (NSArray *)withArray:(NSArray *)array;

@end
