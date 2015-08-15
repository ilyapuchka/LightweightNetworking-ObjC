//
//  NSObject+JSONSerialization.m
//  LightweightNetworking
//
//  Created by Ilya Puchka on 15.08.15.
//  Copyright (c) 2015 Ilya Puchka. All rights reserved.
//

#import "NSObject+JSONSerialization.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation NSObject (JSONSerialization)

+ (NSDictionary *)mapping
{
    return nil;
}

+ (instancetype)withDictionary:(NSDictionary *)dictionary
{
    id object = [[self alloc] init];
    NSDictionary *mapping = [self mapping];
    for (NSString *key in dictionary) {
        NSString *mappedKey = mapping[key];
        if (mappedKey) {
            id value = [object transformedValue:dictionary[key] forKey:mappedKey];
            [object setValue:value forKey:mappedKey];
        }
    }
    return object;
}

- (id)transformedValue:(id)value forKey:(NSString *)key
{
    typedef id (*ObjCMsgSendReturnId)(id, SEL, id);
    ObjCMsgSendReturnId sendMsgReturnId = (ObjCMsgSendReturnId)objc_msgSend;

    NSString *keyTransformer = [NSString stringWithFormat:@"%@FromDictionary:", key];
    SEL transformer = NSSelectorFromString(keyTransformer);
    if ([[self class] respondsToSelector:transformer]) {
        return sendMsgReturnId([self class], transformer, value);
    }
    return value;
}

+ (NSArray *)withArray:(NSArray *)array
{
    NSMutableArray *result = [@[] mutableCopy];
    for (NSDictionary *dict in array) {
        id item = [self withDictionary:dict];
        if (item) {
            [result addObject:item];
        }
    }
    return [result copy];
}

@end
