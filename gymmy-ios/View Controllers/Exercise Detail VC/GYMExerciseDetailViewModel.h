//
// Created by Friedrich Pfitzmann on 24.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GYMExercise;

@interface GYMExerciseDetailViewModel : NSObject
@property(nonatomic, strong) GYMExercise *exercise;
@property(nonatomic, copy, readonly) NSString *exerciseName;
@property(nonatomic, copy, readonly) NSString *numberOfRepetitions;
@property(nonatomic, copy, readonly) NSString *numberOfSets;
@property(nonatomic, copy, readonly) NSString *weight;
@end