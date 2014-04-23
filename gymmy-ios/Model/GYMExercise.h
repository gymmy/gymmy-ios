//
// Created by Friedrich Pfitzmann on 20.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GYMExercise : NSObject
@property(nonatomic, copy) NSString *name;
@property(assign) NSInteger numberOfSets;
@property(assign) NSInteger numberOfRepetitions;
@property(assign) NSInteger duration;

- (instancetype)initWithName:(NSString *)name numeberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfrepetitions duration:(NSInteger)duration;

+ (instancetype)exerciseWithName:(NSString *)name numberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfRepetitions duration:(NSInteger)duration;
@end