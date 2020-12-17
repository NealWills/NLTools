//
//  NLRect.h
//  YYKitTest
//
//  Created by Administer on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NLCenter : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

+ (instancetype)centerWithCenterX:(CGFloat)x CenterY:(CGFloat)y;
+ (instancetype)centerWithCenter:(CGPoint)center;

@end

@interface NLLocation : NSObject

@property (nonatomic, assign) CGFloat leading;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat trailing;

+ (instancetype)locationWithTop:(CGFloat)top Leading:(CGFloat)leading Bottom:(CGFloat)bottom Trailing:(CGFloat)trailing;

@end

@interface NLSize : NSObject

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

+ (instancetype)sizeWithWidth:(CGFloat)width Height:(CGFloat)height;
+ (instancetype)sizeWithSize:(CGSize)size;

@end

@interface NLOrigin : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

+ (instancetype)originWithOriginX:(CGFloat)x OriginY:(CGFloat)y;
+ (instancetype)originWithOrigin:(CGPoint)origin;

@end

@interface NLRect : NSObject


@property (nonatomic, strong) NLOrigin *origin;
@property (nonatomic, strong) NLSize *size;

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, strong) NLCenter *center;

@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@property (nonatomic, strong) NLLocation *location;

@property (nonatomic, assign) CGFloat leading;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat trailing;

+ (instancetype)rectFromFrame:(CGRect)frame;
+ (instancetype)rectFromLocation:(NLLocation *)location;
+ (instancetype)rectFromCenter:(NLCenter *)center Size:(NLSize *)size;
+ (instancetype)rectFromOrigin:(NLOrigin *)origin Size:(NLSize *)size;

@end

NS_ASSUME_NONNULL_END
