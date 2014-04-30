#import "GYMWorkoutTableViewCellModel.h"
#import "GYMWorkout.h"
#import "GYMExercise.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMWorkoutTableViewCellModelSpec)
	describe(@"GYMWorkoutTableViewCellModel", ^{
	    __block GYMWorkoutTableViewCellModel *vm;

	    beforeEach(^{
	        vm = [GYMWorkoutTableViewCellModel new];
	    });

	    context(@"when the workout is set", ^{

	        beforeEach(^{
	            GYMExercise *exercise1 = [GYMExercise exerciseWithName:@"Test Exercise" numberOfSets:5 numberOfRepetitions:10 weight:50];
	            GYMExercise *exercise2 = [GYMExercise exerciseWithName:@"Test Exercise 2" numberOfSets:9 numberOfRepetitions:30 weight:20];
	            GYMWorkout *workout = [GYMWorkout workoutWithName:@"Test" exercises:@[exercise1, exercise2]];
		        vm.workout = workout;
	        });

	        it(@"should set the Workoutname string", ^{
	            [[vm.workoutName should] equal:@"Test"];
	        });

	        it(@"should set the number of exercises string", ^{
	            [[vm.numberOfExercises should] equal:@"2"];
	        });

	    });
	});
SPEC_END
