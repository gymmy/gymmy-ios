//
//  gymmy-ios - GYMWorkoutVCViewModelTests.m
//  Copyright 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//
//  Created by: Friedrich Pfitzmann
//

// Class under test
#import "GYMWorkoutVCViewModel.h"
#import "GYMWorkout.h"

// Collaborators

// Test support
#import <XCTest/XCTest.h>

// Uncomment the next two lines to use OCHamcrest for test assertions:
#define HC_SHORTHAND

#import <OCHamcrest/OCHamcrest.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>


@interface GYMWorkoutVCViewModelTests : XCTestCase
@end

@implementation GYMWorkoutVCViewModelTests {
	GYMWorkoutVCViewModel *_viewModel;
}

- (void)setUp {
	_viewModel = [GYMWorkoutVCViewModel new];
}

- (void)testViewModelReturns3LinesForDummyData {
	assertThatInteger([_viewModel numberOfRows], is(equalToInteger(3)));
}

- (void)testViewModelReturnsCorrectWorkoutForIndexPath {
	NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];

	assertThat([_viewModel workoutAtIndexPath:indexPath], is(notNilValue()));
	assertThatUnsignedInteger([[[_viewModel workoutAtIndexPath:indexPath] exercises] count],
	is(equalToUnsignedInteger(6)));
}
@end
