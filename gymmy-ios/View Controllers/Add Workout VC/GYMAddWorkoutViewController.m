#import "GYMAddWorkoutViewController.h"
#import "GYMAddWorkoutViewModel.h"

@interface GYMAddWorkoutViewController ()
@property(weak, nonatomic) IBOutlet UIButton *cancelButton;
@property(weak, nonatomic) IBOutlet UIButton *saveButton;
@property(weak, nonatomic) IBOutlet UITextField *workoutNameTextField;
@property(weak, nonatomic) IBOutlet UIButton *addExercisesButton;
@end

@implementation GYMAddWorkoutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (!self) return nil;

	[self setupViewModel];

	return self;
}

- (void)setupViewModel {
	self.viewModel = [GYMAddWorkoutViewModel new];
}

- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (!self) return nil;

	[self setupViewModel];

	return self;
}

- (void)viewDidLoad {
	[super viewDidLoad];

	@weakify(self)
	RAC(self.viewModel, workoutName) = self.workoutNameTextField.rac_textSignal;

	self.cancelButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
	    @strongify(self)
	    [self.presentingViewController dismissViewControllerAnimated:YES
	                                                      completion:nil];
	    return [RACSignal empty];
	}];

	self.saveButton.rac_command = self.viewModel.saveCommand;
	[[self.viewModel.saveCommand executionSignals] subscribeNext:^(RACSignal *signal) {
	    [signal subscribeCompleted:^{
	        [self.presentingViewController dismissViewControllerAnimated:YES
	                                                          completion:nil];
	    }];
	}];

	[self.saveButton setNeedsDisplay];
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	[self.saveButton setNeedsDisplay];
}

@end