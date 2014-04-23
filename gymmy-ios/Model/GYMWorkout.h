//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GYMWorkout : NSObject
@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSArray *exercises;

+ (instancetype)workoutWithName:(NSString *)name exercises:(NSArray *)exercises;

- (instancetype)initWithName:(NSString *)name exercises:(NSArray *)exercises;

@end