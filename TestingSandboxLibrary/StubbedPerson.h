//
//  StubbedPerson.h
//  TestingSandbox
//
//  Created by Adam Price on 2/19/20.
//  Copyright © 2020 Butterfly Network. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StubbedPerson: NSObject
@property(readonly) int value;
+ (instancetype)allocPerson;
+ (instancetype)_allocPerson;
+ (instancetype)allocateDummy;
+ (int)classMethodWithInt:(int)value;
+ (StubbedPerson *)classMethodWithIdReturn:(int)value;
- (instancetype)initWithValue:(int)value;

@end
