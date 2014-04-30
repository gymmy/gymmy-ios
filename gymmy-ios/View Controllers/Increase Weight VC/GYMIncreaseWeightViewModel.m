#import "GYMIncreaseWeightViewModel.h"

@interface GYMIncreaseWeightViewModel ()
@property(nonatomic, strong, readwrite) RACCommand *increaseWeightCommand;
@property(nonatomic, strong, readwrite) RACCommand *decreaseWeightCommand;
@end

@implementation GYMIncreaseWeightViewModel
- (id)init {
	self = [super init];
	if (!self) return nil;

	self.decreaseWeightCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
	    return [RACSignal empty];
	}];

	self.increaseWeightCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
	    return [RACSignal empty];
	}];

	return self;
}

@end