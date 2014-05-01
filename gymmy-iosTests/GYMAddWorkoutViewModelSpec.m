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

	    it(@"should send the current workoutname for the save command", ^{
	        vm.workoutName = @"Test";

	        __block NSString *workoutName;
	        [vm.saveCommand.executionSignals subscribeNext:^(RACSignal *signal) {
	            [signal subscribeNext:^(NSString *x) {
		            workoutName = x;
	            }];
	        }];

	        [vm.saveCommand execute:nil];
	        [[expectFutureValue(workoutName) shouldEventually] equal:@"Test"];
	    });
	});
SPEC_END

