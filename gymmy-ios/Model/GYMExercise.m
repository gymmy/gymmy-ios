//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExercise.h"


@implementation GYMExercise
- (instancetype)initWithName:(NSString *)name numeberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfrepetitions duration:(NSInteger)duration {
	self = [super init];
	if (!self) return nil;

	self.name = name;
	self.numberOfSets = numOfSets;
	self.numberOfRepetitions = numOfrepetitions;
	self.duration = duration;

	return self;
}

+ (instancetype)exerciseWithName:(NSString *)name numberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfRepetitions duration:(NSInteger)duration {
	return [[self alloc] initWithName:name numeberOfSets:numOfSets numberOfRepetitions:numOfRepetitions duration:duration];
}

@end