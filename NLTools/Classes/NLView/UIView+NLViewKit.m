//
//  UIView+NLViewKit.m
//  YYKitTest
//
//  Created by Administer on 2020/11/10.
//

#import "UIView+NLViewKit.h"

#import <objc/runtime.h>

@implementation UIView (Custom)


- (NLViewKit *)ownNLView {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setOwnNLView:(NLViewKit *)ownNLView {
    objc_setAssociatedObject(self, @selector(ownNLView), ownNLView, OBJC_ASSOCIATION_RETAIN);
}

- (UIView *)superView {
    return objc_getAssociatedObject(self, _cmd);
}

- (NLViewKit *)nl {
    NLViewKit *viewKit = [self ownNLView];
    if (!viewKit) {
        viewKit = [[NLViewKit alloc] initWithView:self];
        [self setOwnNLView:viewKit];
    }
    return viewKit;
}

@end
