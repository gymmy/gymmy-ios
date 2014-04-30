#import <Foundation/Foundation.h>

@class GYMWorkout;
@class GYMWorkoutTableViewCellModel;

@interface GYMWorkoutTableViewCell : UITableViewCell
@property(nonatomic, strong) GYMWorkoutTableViewCellModel *viewModel;
@end