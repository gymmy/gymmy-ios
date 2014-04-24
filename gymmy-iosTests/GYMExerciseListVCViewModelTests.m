//
//  gymmy-ios - GYMExerciseListVCViewModelTests.m
//  Copyright 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//
//  Created by: Friedrich Pfitzmann
//

// Class under test
#import "GYMExerciseListVCViewModel.h"
// Collaborators
#import "GYMExercise.h"
#import "GYMWorkout.h"
// Test support
#import <XCTest/XCTest.h>

// Uncomment the next two lines to use OCHamcrest for test assertions:
#define HC_SHORTHAND

#import <OCHamcrest/OCHamcrest.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>


@interface GYMExerciseListVCViewModelTests : XCTestCase
@end

@implementation GYMExerciseListVCViewModelTests {
	GYMExerciseListVCViewModel *vm;
}

- (void)setUp {
	vm = [GYMExerciseListVCViewModel new];
	GYMExercise *test = [GYMExercise exerciseWithName:@"Test" numberOfSets:1 numberOfRepetitions:1 weight:10];
	GYMWorkout *workout = [[GYMWorkout alloc] initWithName:@"Test Workout" exercises:@[test]];
	vm.workout = workout;
}

- (void)testVMReturnsCorrectNumbersOfRowIfThereIsAWorkout {
	assertThatInteger([vm numberOfRows], is(equalToInteger(1)));
}

- (void)testVMReturnsZeroRowsForANilWorkout {
	vm.workout = nil;
	assertThatInteger([vm numberOfRows], is(equalToInteger(0)));
}

- (void)testVMReturnsExerciseForIndexPath {
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
	assertThat([vm exerciseForIndexPath:indexPath], isNot((nilValue())));
}

@end
