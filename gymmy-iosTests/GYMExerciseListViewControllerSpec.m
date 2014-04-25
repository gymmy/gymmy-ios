//
// Created by Friedrich Pfitzmann on 25.04.14.
// Copyright (c) 2014 Pfitzmann Software Solutions - Friedrich Pfitzmann. All rights reserved.
//

#import "GYMExerciseListViewController.h"
#import "GYMExerciseListVCViewModel.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMExerciseListViewControllerSpec)
	describe(@"GYMExerciseListViewController", ^{
		__block GYMExerciseListViewController *vc;

	    beforeEach(^{
	        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"gymmy_iphone"
	                                                             bundle:[NSBundle mainBundle]];

	        vc = [storyboard instantiateViewControllerWithIdentifier:@"GYMExerciseListViewController"];
	    });

	    it(@"should conform to the UITableViewDelegate protocol", ^{
	        [[vc should] conformToProtocol:@protocol(UITableViewDelegate)];
	    });

	    it(@"should conform to the UITableViewDataSource protocol", ^{
	        [[vc should] conformToProtocol:@protocol(UITableViewDataSource)];
	    });

	    it(@"should have a view model", ^{
	        [[vc.viewModel shouldNot] beNil];
	    });
	});
SPEC_END

