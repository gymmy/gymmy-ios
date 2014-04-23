//
//  gymmy-ios - GYMWorkoutViewControllerTests.m
//  Copyright 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//
//  Created by: Friedrich Pfitzmann
//

// Class under test
#import "GYMExerciseListViewController.h"

// Collaborators

// Test support
#import <XCTest/XCTest.h>

// Uncomment the next two lines to use OCHamcrest for test assertions:
#define HC_SHORTHAND

#import <OCHamcrest/OCHamcrest.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>


@interface GYMExerciseListViewControllerTests : XCTestCase
@end

@implementation GYMExerciseListViewControllerTests {
	GYMExerciseListViewController *_vc;
}

- (void)setUp {
	_vc = [[GYMExerciseListViewController alloc] init];
}

- (void)testVCConformsToUITableViewDelegateProtocol {
	assertThat(_vc, conformsTo(@protocol(UITableViewDelegate)));
}

- (void)testVCConformsToUITableViewDataSourceProtocol {
	assertThat(_vc, conformsTo(@protocol(UITableViewDataSource)));
}

- (void)testVCHasAViewModel {
	assertThat(_vc.viewModel, isNot(nilValue()));
}

@end
