//
//  NLViewKit.h
//  YYKitTest
//
//  Created by Administer on 2020/11/10.
//

#import <Foundation/Foundation.h>
#import "NLRect.h"

NS_ASSUME_NONNULL_BEGIN

@interface NLViewKit : NSObject

@property (nonatomic, strong) NLRect *frame;

- (instancetype)initWithView:(UIView *)view;

@end

//MARK:- Rect

@interface NLViewKit (NLRect)

- (CGFloat)x;
- (void)setX:(CGFloat)x;
- (CGFloat)y;
- (void)setY:(CGFloat)y;
- (NLOrigin *)origin;
- (void)setOrigin:(NLOrigin *)origin;

- (CGFloat)width;
- (void)setWidth:(CGFloat)width;
- (CGFloat)height;
- (void)setHeight:(CGFloat)height;
- (NLSize *)size;
- (void)setSize:(NLSize *)size;

- (CGFloat)top;
- (void)setTop:(CGFloat)top;
- (CGFloat)leading;
- (void)setLeading:(CGFloat)leading;
- (CGFloat)bottom;
- (void)setBottom:(CGFloat)bottom;
- (CGFloat)trailing;
- (void)setTrailing:(CGFloat)trailing;
- (NLLocation *)location;
- (void)setLocation:(NLLocation *)location;


/**
 * 对中心点进行设置时，务必先设置size或size相关
 */
- (CGFloat)centerX;
- (void)setCenterX:(CGFloat)centerX;
/**
 * 对中心点进行设置时，务必先设置size或size相关
 */
- (CGFloat)centerY;
- (void)setCenterY:(CGFloat)centerY;
/**
 * 对中心点进行设置时，务必先设置size或size相关
 */
- (NLCenter *)center;
- (void)setCenter:(NLCenter *)center;


@end

NS_ASSUME_NONNULL_END
