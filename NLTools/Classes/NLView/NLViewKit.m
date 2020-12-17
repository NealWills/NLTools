//
//  NLViewKit.m
//  YYKitTest
//
//  Created by Administer on 2020/11/10.
//

#import "NLViewKit.h"



@interface NLViewKit ()

@property (nullable, nonatomic) UIView *base;

@end

@implementation NLViewKit

- (NLRect *)frame {
    return [NLRect rectFromFrame:self.base.frame];
}

- (instancetype)initWithView:(UIView *)view {
    self = [super init];
    if (self) {
        self.base = view;
    }
    return self;
}

@end




//MARK:- Rect

@implementation NLViewKit (NLRect)

- (void)setFrame:(NLRect *)frame {
    self.base.frame = CGRectMake(frame.x, frame.y, frame.width, frame.height);
}

- (CGFloat)x {
    return self.frame.x;
}
- (void)setX:(CGFloat)x {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height);
}

- (CGFloat)y {
    return self.frame.y;
}
- (void)setY:(CGFloat)y {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, y, frame.size.width, frame.size.height);
}

- (NLOrigin *)origin {
    return self.frame.origin;
}
- (void)setOrigin:(NLOrigin *)origin {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(origin.x, origin.y, frame.size.width, frame.size.height);
}

- (CGFloat)width {
    return self.frame.width;
}
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, frame.origin.y, width, frame.size.height);
}

- (CGFloat)height {
    return self.frame.height;
}
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, height);
}

- (NLSize *)size {
    return self.frame.size;
}
- (void)setSize:(NLSize *)size {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, frame.origin.y, size.width, size.height);
}

- (CGFloat)top {
    return self.frame.top;
}
- (void)setTop:(CGFloat)top {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, top, frame.size.width, frame.size.height);
}

- (CGFloat)leading {
    return self.frame.leading;
}
- (void)setLeading:(CGFloat)leading {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(leading, frame.origin.y, frame.size.width, frame.size.height);
}

- (CGFloat)bottom {
    return self.frame.bottom;
}
- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, bottom - frame.size.height);
}

- (CGFloat)trailing {
    return self.frame.trailing;
}
- (void)setTrailing:(CGFloat)trailing {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, frame.origin.y, trailing - frame.size.width, frame.size.height);
}

- (NLLocation *)location {
    return self.frame.location;
}
- (void)setLocation:(NLLocation *)location {
    self.base.frame = CGRectMake(location.leading, location.top, location.trailing - location.leading, location.bottom - location.top);
}

- (CGFloat)centerX {
    return self.frame.centerX;
}
- (void)setCenterX:(CGFloat)centerX {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(centerX - frame.size.width / 2.0, frame.origin.y, frame.size.width, frame.size.height);
}
- (CGFloat)centerY {
    return self.frame.centerY;
}
- (void)setCenterY:(CGFloat)centerY {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(frame.origin.x, centerY - frame.size.height / 2.0, frame.size.width, frame.size.height);
}
- (NLCenter *)center {
    return self.frame.center;
}
- (void)setCenter:(NLCenter *)center {
    CGRect frame = self.base.frame;
    self.base.frame = CGRectMake(center.x - frame.size.width / 2.0, center.y - frame.size.height / 2.0, frame.size.width, frame.size.height);
}


@end
