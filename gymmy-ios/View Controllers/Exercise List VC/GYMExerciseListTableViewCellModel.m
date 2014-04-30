#import "GYMExerciseListTableViewCellModel.h"
#import "GYMExercise.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface GYMExerciseListTableViewCellModel ()
@property (nonatomic, copy, readwrite) NSString *weight;
@property (nonatomic, copy, readwrite) NSString *numberOfRepetitions;
@property (nonatomic, copy, readwrite) NSString *numberOfSets;
@property (nonatomic, copy, readwrite) NSString *exerciseName;
@end

@implementation GYMExerciseListTableViewCellModel
- (id)init {
	self = [super init];
	if (!self) return nil;

	[[RACObserve(self, exercise) ignore:nil] subscribeNext:^(GYMExercise *exercise1) {
		self.exerciseName =  exercise1.name;
		self.numberOfRepetitions = [@(exercise1.numberOfRepetitions) stringValue];
		self.numberOfSets = [@(exercise1.numberOfSets) stringValue];
		self.weight = [@(exercise1.weight) stringValue];
	}];

	return self;
}

@end