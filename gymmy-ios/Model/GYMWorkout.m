//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMWorkout.h"


@implementation GYMWorkout
- (instancetype)initWithName:(NSString *)name exercises:(NSArray *)exercises {
	self = [super init];
	if (!self) return nil;

	self.name = name;
	self.exercises = exercises;

	return self;
}

+ (instancetype)workoutWithName:(NSString *)name exercises:(NSArray *)exercises {
	return [[self alloc] initWithName:name exercises:exercises];
}

@end