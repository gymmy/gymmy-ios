#import "GYMExerciseDetailViewModel.h"
#import "GYMExercise.h"

@interface GYMExerciseDetailViewModel ()
@property(nonatomic, copy, readwrite) NSString *exerciseName;
@property(nonatomic, copy, readwrite) NSString *numberOfRepetitions;
@property(nonatomic, copy, readwrite) NSString *numberOfSets;
@property(nonatomic, copy, readwrite) NSString *weight;
@end

@implementation GYMExerciseDetailViewModel

- (void)setExercise:(GYMExercise *)exercise {
	_exercise = exercise;

	self.exerciseName = exercise.name;
	self.numberOfRepetitions = [@(exercise.numberOfRepetitions) stringValue];
	self.numberOfSets = [@(exercise.numberOfSets) stringValue];
	self.weight = [@(exercise.weight) stringValue];
}

@end
