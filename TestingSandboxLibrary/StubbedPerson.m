//
//  StubbedPerson.m
//  TestingSandboxLibrary
//
//  Created by Adam Price on 2/19/20.
//  Copyright © 2020 Butterfly Network. All rights reserved.
//

#import "StubbedPerson.h"

@implementation StubbedPerson

+ (instancetype)allocPerson {
    return [self alloc];
}

+ (instancetype)_allocPerson {
    return [self alloc];
}

+ (instancetype)allocateDummy {
    return [self alloc];
}

+ (int)classMethodWithInt:(int)value {
    return [self classMethodWithIdReturn:value].value + 9;
}

+ (StubbedPerson *)classMethodWithIdReturn:(int)value {
    return [[self alloc] initWithValue:value];
}

- (instancetype)initWithValue:(int)value {
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

@end
