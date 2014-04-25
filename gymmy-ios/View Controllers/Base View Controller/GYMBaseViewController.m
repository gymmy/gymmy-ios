#import "UIView+FLKAutoLayout.h"
#import "UIColor+GYMColor.h"
#import "GYMBaseViewController.h"

@implementation GYMBaseViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self setupNavigationBarBackground];
	[self setupTitleLabel];
}

- (void)setupNavigationBarBackground {
	self.navigationController.navigationBar.barTintColor = [UIColor gymmyLightGreen];
	self.navigationController.navigationBar.translucent = NO;
}

- (void)setupTitleLabel {
	UIFont *font = [UIFont fontWithName:@"AvenirNext-DemiBold" size:21];
	NSDictionary *attributes = @{NSFontAttributeName : font};
	NSAttributedString *titleAttributed = [[NSAttributedString alloc] initWithString:self.title
	                                                                      attributes:attributes];

	UIView *titleView = [[UIView alloc] init];

	UILabel *titleViewLabel = [[UILabel alloc] init];
	titleViewLabel.translatesAutoresizingMaskIntoConstraints = NO;
	titleViewLabel.attributedText = titleAttributed;
	[titleView addSubview:titleViewLabel];

	[titleViewLabel alignCenterWithView:titleView];
	titleView.frame =
			CGRectMake(0,
					0,
					titleViewLabel.intrinsicContentSize.width,
					titleViewLabel.intrinsicContentSize.height);

	self.navigationItem.titleView = titleView;
}
@end