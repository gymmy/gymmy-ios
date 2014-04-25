#import "GYMWorkoutViewController.h"
#import "GYMWorkoutVCViewModel.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMWorkoutViewControllerSpec)
	describe(@"GYMWorkoutViewController", ^{
	    __block GYMWorkoutViewController *vc;

	    beforeEach(^{
	        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"gymmy_iphone"
	                                                             bundle:[NSBundle mainBundle]];
	        vc = [storyboard instantiateViewControllerWithIdentifier:@"GYMWorkoutViewController"];
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