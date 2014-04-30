#import <Foundation/Foundation.h>

@class GYMExercise;
@class GYMExerciseListTableViewCellModel;

@interface GYMExerciseListTableViewCell : UITableViewCell
@property (nonatomic, strong) GYMExerciseListTableViewCellModel *viewModel;
@end