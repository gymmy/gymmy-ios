#import "GYMExercise.h"

@implementation GYMExercise
- (instancetype)initWithName:(NSString *)name numeberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfRepetitions weight:(NSInteger)weight {
	self = [super init];
	if (!self) return nil;

	self.name = name;
	self.numberOfSets = numOfSets;
	self.numberOfRepetitions = numOfRepetitions;
	self.weight = weight;

	return self;
}

+ (instancetype)exerciseWithName:(NSString *)name numberOfSets:(NSInteger)numOfSets numberOfRepetitions:(NSInteger)numOfRepetitions weight:(NSInteger)weight {
	return [[self alloc] initWithName:name numeberOfSets:numOfSets numberOfRepetitions:numOfRepetitions weight:weight];
}

@end