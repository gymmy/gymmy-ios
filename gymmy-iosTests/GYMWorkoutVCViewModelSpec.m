#import "GYMWorkoutVCViewModel.h"
#import "GYMWorkout.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMWorkoutVCViewModelSpec)
	describe(@"GYMWorkoutVCViewModel", ^{
		__block  GYMWorkoutVCViewModel *vm;

	    beforeEach(^{
		    vm = [GYMWorkoutVCViewModel new];
	    });

	    it(@"should return the correct number of rows for a workout", ^{
	        [[theValue([vm numberOfRows]) should] equal:theValue(3)];
	    });

	    it(@"should return the correct Workout for a given indexPath", ^{
	        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];

	        [[[vm workoutAtIndexPath:indexPath] shouldNot] beNil];
	        [[[[vm workoutAtIndexPath:indexPath] exercises] should] haveCountOf:6];
	    });
	});
SPEC_END
