//
//  NLRect.m
//  YYKitTest
//
//  Created by Administer on 2020/11/10.
//

#import "NLRect.h"

@implementation NLCenter

+ (instancetype)centerWithCenterX:(CGFloat)x CenterY:(CGFloat)y {
    return [[self alloc] initWithCenterX:x CenterY:y];
}

+ (instancetype)centerWithCenter:(CGPoint)center {
    return [[self alloc] initWithCenterX:center.x CenterY:center.y];
}

- (instancetype)initWithCenterX:(CGFloat)x CenterY:(CGFloat)y {
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

- (NSString *)description {
    return NSStringFromCGPoint(CGPointMake(self.x, self.y));
}

@end

@implementation NLLocation : NSObject

+ (instancetype)locationWithTop:(CGFloat)top Leading:(CGFloat)leading Bottom:(CGFloat)bottom Trailing:(CGFloat)trailing {
    return [[self alloc] initWithTop:top Leading:leading Bottom:bottom Trailing:trailing];
}

- (instancetype)initWithTop:(CGFloat)top Leading:(CGFloat)leading Bottom:(CGFloat)bottom Trailing:(CGFloat)trailing {
    self = [super init];
    if (self) {
        self.leading = leading;
        self.top = top;
        self.bottom = bottom;
        self.trailing = trailing;
    }
    return self;
}

- (NSString *)description {
    return NSStringFromUIEdgeInsets(UIEdgeInsetsMake(self.top, self.leading, self.bottom, self.trailing));
}

@end

@implementation NLSize : NSObject

+ (instancetype)sizeWithWidth:(CGFloat)width Height:(CGFloat)height {
    return [[self alloc] initWithWidth:width Height:height];
}

+ (instancetype)sizeWithSize:(CGSize)size {
    return [[self alloc] initWithWidth:size.width Height:size.height];
}

- (instancetype)initWithWidth:(CGFloat)width Height:(CGFloat)height {
    self = [super init];
    if (self) {
        self.width = width;
        self.height = height;
    }
    return self;
}

- (NSString *)description {
    return NSStringFromCGSize(CGSizeMake(self.width, self.height));
}

@end

@implementation NLOrigin : NSObject


+ (instancetype)originWithOriginX:(CGFloat)x OriginY:(CGFloat)y {
    return [[self alloc] initWithOriginX:x OriginY:y];
}

+ (instancetype)originWithOrigin:(CGPoint)origin {
    return [[self alloc] initWithOriginX:origin.x OriginY:origin.y];
}

- (instancetype)initWithOriginX:(CGFloat)x OriginY:(CGFloat)y {
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
    }
    return self;
}

- (NSString *)description {
    return NSStringFromCGPoint(CGPointMake(self.x, self.y));
}

@end

@implementation NLRect : NSObject

- (CGFloat)x {
    return self.origin.x;
}

- (CGFloat)y {
    return self.origin.y;
}

- (CGFloat)width {
    return self.size.width;
}

- (CGFloat)height {
    return self.size.height;
}

- (NLCenter *)center {
    return [NLCenter centerWithCenterX:self.x + self.width / 2.0 CenterY:self.y + self.height / 2.0];
}

- (CGFloat)centerX {
    return self.center.x;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (NLLocation *)location {
    return [NLLocation locationWithTop:self.y Leading:self.x Bottom:self.y + self.height Trailing:self.x + self.width];
}

- (CGFloat)leading {
    return self.location.leading;
}

- (CGFloat)top {
    return self.location.top;
}

- (CGFloat)bottom {
    return self.location.bottom;
}

- (CGFloat)trailing {
    return self.location.trailing;
}

+ (instancetype)rectFromFrame:(CGRect)frame {
    return [[self alloc] initWithFrame:frame];
}

+ (instancetype)rectFromLocation:(NLLocation *)location {
    CGRect frame = CGRectMake(location.leading, location.top, location.trailing - location.leading, location.bottom - location.top);
    return [[self alloc] initWithFrame:frame];
}

+ (instancetype)rectFromCenter:(NLCenter *)center Size:(NLSize *)size {
    CGRect frame = CGRectMake(center.x - size.width / 2.0, center.y - size.height / 2.0, size.width, size.height);
    return [[self alloc] initWithFrame:frame];
}

+ (instancetype)rectFromOrigin:(NLOrigin *)origin Size:(NLSize *)size {
    CGRect frame = CGRectMake(origin.x, origin.y, size.width, size.height);
    return [[self alloc] initWithFrame:frame];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super init];
    if (self) {
        self.origin = [NLOrigin originWithOriginX:frame.origin.x OriginY:frame.origin.y];
        self.size = [NLSize sizeWithWidth:frame.size.width Height:frame.size.height];
    }
    return self;
}

- (NSString *)description {
    return NSStringFromCGRect(CGRectMake(self.x, self.y, self.width, self.height));
}

@end
