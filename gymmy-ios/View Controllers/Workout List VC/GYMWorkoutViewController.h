#import <Foundation/Foundation.h>
#import "GYMBaseViewController.h"
#import "GYMBaseTableViewController.h"

@class GYMWorkoutVCViewModel;

@interface GYMWorkoutViewController : GYMBaseTableViewController
@property(nonatomic, strong) GYMWorkoutVCViewModel *viewModel;
@end