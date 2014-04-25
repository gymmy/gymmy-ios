#import <Foundation/Foundation.h>

@interface UIColor (GYMColor)

+ (UIColor *)gymmyLightGreen;

+ (UIColor *)colorWithHexString:(NSString *)hexString;

+ (CGFloat)colorComponentFrom:(NSString *)string start:(NSUInteger)start length:(NSUInteger)length;
@end