#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface GYMIncreaseWeightViewModel : NSObject
@property(nonatomic, strong, readonly) RACCommand *increaseWeightCommand;
@property(nonatomic, strong, readonly) RACCommand *decreaseWeightCommand;
@end