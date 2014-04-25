#import "UIView+GYMMYAdditions.h"

@implementation UIView (GYMMYAdditions)
- (UIImage *)gym_snapshot {
	UIGraphicsBeginImageContext(self.bounds.size);
	[self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

	return image;
}
@end