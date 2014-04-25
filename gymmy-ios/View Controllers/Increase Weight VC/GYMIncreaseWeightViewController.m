#import <ReactiveCocoa/ReactiveCocoa.h>
#import "GYMIncreaseWeightViewController.h"
#import "UIImage+GYMMYAdditions.h"

@interface GYMIncreaseWeightViewController ()
@property(weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property(weak, nonatomic) IBOutlet UIButton *yesIncreaseWeightButton;
@property(weak, nonatomic) IBOutlet UIImageView *normalBackgroundImageView;
@property(weak, nonatomic) IBOutlet UILabel *headerTextLabel;
@property(weak, nonatomic) IBOutlet UIButton *noDontIncreaseWeightButton;
@end

@implementation GYMIncreaseWeightViewController {

}

- (void)setBackgroundImage:(UIImage *)backgroundImage {
	_backgroundImage = backgroundImage;
	self.backgroundImageView.image = self.backgroundImage;
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];

	self.backgroundImageView.image = [self.backgroundImage applyLightBlurEffect];
	self.normalBackgroundImageView.image = [self backgroundImage];
	[UIView animateWithDuration:0.4 animations:^{
	    self.backgroundImageView.alpha = 1;
	    self.headerTextLabel.alpha = 1;
	    self.noDontIncreaseWeightButton.alpha = 1;
	    self.yesIncreaseWeightButton.alpha = 1;
	}];
}

- (void)viewDidLoad {
	[super viewDidLoad];

	self.noDontIncreaseWeightButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
	    [self dismissViewControllerAnimated:NO
	                             completion:nil];
	    return [RACSignal empty];
	}];

	self.yesIncreaseWeightButton.rac_command = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
	    [self dismissViewControllerAnimated:NO
	                             completion:nil];
	    return [RACSignal empty];
	}];
}

@end