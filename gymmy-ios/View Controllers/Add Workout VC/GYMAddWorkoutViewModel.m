#import "GYMAddWorkoutViewModel.h"

@implementation GYMAddWorkoutViewModel

- (id)init {
	self = [super init];
	if (!self) return nil;

	@weakify(self)

	self.workoutName = @"";

	self.saveCommand = [[RACCommand alloc] initWithEnabled:[self enableSaveSignal]
	                                           signalBlock:^RACSignal *(id input) {
			    @strongify(self)
			    return [RACSignal return:self.workoutName];
			}];

	return self;
}

- (RACSignal *)enableSaveSignal {
	RACSignal *enableSaveSignal = [RACObserve(self, workoutName) map:^id(NSString *value) {
	    return @(([value length] > 0));
	}];
	return enableSaveSignal;
}
@end