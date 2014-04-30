#import <ReactiveCocoa/ReactiveCocoa.h>
#import "GYMIncreaseWeightViewController.h"
#import "UIImage+GYMMYAdditions.h"
#import "GYMIncreaseWeightViewModel.h"

@interface GYMIncreaseWeightViewController ()
@property(weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property(weak, nonatomic) IBOutlet UIButton *yesIncreaseWeightButton;
@property(weak, nonatomic) IBOutlet UIImageView *normalBackgroundImageView;
@property(weak, nonatomic) IBOutlet UILabel *headerTextLabel;
@property(weak, nonatomic) IBOutlet UIButton *noDontIncreaseWeightButton;
@end

@implementation GYMIncreaseWeightViewController

- (id)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (!self) return nil;

	self.viewModel = [GYMIncreaseWeightViewModel new];

	return self;
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];

	[UIView animateWithDuration:0.4 animations:^{
	    self.backgroundImageView.alpha = 1;
	    self.headerTextLabel.alpha = 1;
	    self.noDontIncreaseWeightButton.alpha = 1;
	    self.yesIncreaseWeightButton.alpha = 1;
	}];
}

- (void)viewDidLoad {
	[super viewDidLoad];

	@weakify(self);
	self.noDontIncreaseWeightButton.rac_command = self.viewModel.decreaseWeightCommand;
	[self.viewModel.decreaseWeightCommand.executionSignals subscribeNext:^(id x) {
	    @strongify(self);
	    [self dismissViewControllerAnimated:NO
	                             completion:nil];
	}];

	self.yesIncreaseWeightButton.rac_command = self.viewModel.increaseWeightCommand;
	[self.viewModel.increaseWeightCommand.executionSignals subscribeNext:^(id x) {
	    @strongify(self);
	    [self.presentingViewController dismissViewControllerAnimated:NO
	                                                      completion:nil];
	}];

	RACSignal *newImageSignal = RACObserve(self, backgroundImage);

	RAC(self.backgroundImageView, image) = [newImageSignal map:^id(UIImage *image) {
	    return [image applyLightBlurEffect];
	}];

	RAC(self.normalBackgroundImageView, image) = newImageSignal;
}

@end