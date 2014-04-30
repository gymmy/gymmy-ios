#import "GYMExerciseListTableViewCellModel.h"
#import "GYMExercise.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMExerciseListTableViewCellModelSpec)
	describe(@"GYMExerciseListTableViewCellModel", ^{
		__block GYMExerciseListTableViewCellModel *vm;

	    beforeEach(^{
		    vm = [GYMExerciseListTableViewCellModel new];
	    });

	    context(@"when a new exercise is set ", ^{

	        beforeEach(^{
	            GYMExercise *test = [GYMExercise exerciseWithName:@"test exercise" numberOfSets:99 numberOfRepetitions:70 weight:13];
		        vm.exercise = test;
	        });

	        it(@"should set the exercise name", ^{
	            [[vm.exerciseName should] equal:@"test exercise"];
	        });

	        it(@"shold set the weight", ^{
	            [[vm.weight should] equal:@"13"];
	        });

	        it(@"should set the number of sets", ^{
	            [[vm.numberOfSets should] equal:@"99"];
	        });

	        it(@"should set the number of repetitions", ^{
	            [[vm.numberOfRepetitions should] equal:@"70"];
	        });
	    });
	});
SPEC_END
