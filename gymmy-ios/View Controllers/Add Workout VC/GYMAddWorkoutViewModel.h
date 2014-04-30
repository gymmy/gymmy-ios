#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface GYMAddWorkoutViewModel : NSObject
@property(nonatomic, copy) NSString *workoutName;
@property(nonatomic, strong) RACCommand *saveCommand;
@end