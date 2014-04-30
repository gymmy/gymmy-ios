#import "GYMAddWorkoutViewModel.h"
#import <Kiwi/Kiwi.h>

@interface GYMAddWorkoutViewModel ()
- (RACSignal *)enableSaveSignal;
@end

SPEC_BEGIN(GYMAddWorkoutViewModelSpec)
	describe(@"GYMAddWorkoutViewModel", ^{
	    __block GYMAddWorkoutViewModel *vm;
	    __block id result;

	    beforeEach(^{
	        vm = [GYMAddWorkoutViewModel new];
	        [vm.enableSaveSignal subscribeNext:^(id x) {
	            result = x;
	        }];
	    });

	    it(@"should disable the save when nothing is entered", ^{
	        vm.workoutName = @"";
	       [[result should] equal:@(NO)];
	    });

	    it(@"should enable the save when at least one char is entered", ^{
	        vm.workoutName = @"T";
	        [[result shouldEventually] equal:@(YES)];
	    });
	});
SPEC_END

