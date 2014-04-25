//
// Created by Friedrich Pfitzmann on 25.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExerciseListVCViewModel.h"
#import "GYMWorkout.h"
#import "GYMExercise.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMExerciseListVCViewModelSpec)
	describe(@"GYMExerciseListVCViewModel", ^{
		__block GYMExerciseListVCViewModel *vm;
		__block  GYMExercise *test2;

	    beforeEach(^{
		    vm = [GYMExerciseListVCViewModel new];
	        GYMExercise *test = [GYMExercise exerciseWithName:@"Test" numberOfSets:1 numberOfRepetitions:1 weight:10];
	        test2 = [[GYMExercise alloc] initWithName:@"test2" numeberOfSets:1 numberOfRepetitions:3 weight:100];
	        GYMWorkout *workout = [[GYMWorkout alloc] initWithName:@"Test Workout" exercises:@[test, test2]];
	        vm.workout = workout;
	    });

	    it(@"should return the correct number of rows for a workout", ^{
	        [[theValue([vm numberOfRows]) should] equal:theValue(2)];
	    });

	    it(@"should return zero rows for a nil workout", ^{
		    vm.workout = nil;
	        [[theValue([vm numberOfRows]) should] equal:theValue(0)];
	    });
	    it(@"should return the correct exercise for a gixen indexPath", ^{
	        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
	        [[[vm exerciseForIndexPath:indexPath] should] equal:test2];
	    });
	});
SPEC_END

