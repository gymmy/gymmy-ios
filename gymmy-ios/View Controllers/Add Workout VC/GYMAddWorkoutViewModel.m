#import "GYMAddWorkoutViewModel.h"

@implementation GYMAddWorkoutViewModel

- (id)init {
	self = [super init];
	if (!self) return nil;

	@weakify(self)

	self.workoutName = @"";

	self.saveCommand = [[RACCommand alloc] initWithEnabled:[self enableSaveSignal]
	                                           signalBlock:^RACSignal *(id input) {
			    @strongify(self);
				RACSignal *signal = [RACSignal createSignal:^RACDisposable *(id <RACSubscriber> subscriber) {
				    [subscriber sendNext:self.workoutName];
				    [subscriber sendCompleted];
				    return nil;
				}];
			    return signal;
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