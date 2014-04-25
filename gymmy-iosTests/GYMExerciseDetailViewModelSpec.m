//
// Created by Friedrich Pfitzmann on 25.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExerciseDetailViewModel.h"
#import "GYMExercise.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMExerciseDetailViewModelSpec)
	describe(@"GYMExerciseDetailViewModel", ^{

	    __block GYMExerciseDetailViewModel *vm;

	    beforeEach(^{
	        vm = [GYMExerciseDetailViewModel new];
	        GYMExercise *exercise = [GYMExercise exerciseWithName:@"Test"
	                                                 numberOfSets:1
				                              numberOfRepetitions:2
								                           weight:100];
	        vm.exercise = exercise;
	    });

	    it(@"should set the properties when adding a execise", ^{

	        [[vm.exerciseName should] equal:@"Test"];
	        [[vm.numberOfRepetitions should] equal:@"2"];
	        [[vm.numberOfSets should] equal:@"1"];
	        [[vm.weight should] equal:@"100"];
	    });

	});
SPEC_END