#import "GYMWorkout.h"

@implementation GYMWorkout
- (instancetype)initWithName:(NSString *)name exercises:(NSArray *)exercises {
	self = [super init];
	if (!self) return nil;

	self.name = name;
	self.exercises = exercises;

	return self;
}

+ (instancetype)workoutWithName:(NSString *)name exercises:(NSArray *)exercises {
	return [[self alloc] initWithName:name exercises:exercises];
}

@end