//
//  NSDate+NLDateKit.m
//  YYKitTest
//
//  Created by Administer on 2020/11/11.
//

#import "NSDate+NLDateKit.h"

#import <objc/runtime.h>

@implementation NSDate (NLDateKit)

- (NLDateKit *)ownNLDate {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setOwnNLDate:(NLDateKit *)ownNLDate {
    objc_setAssociatedObject(self, @selector(ownNLDate), ownNLDate, OBJC_ASSOCIATION_RETAIN);
}

- (NSDate *)superDate {
    return objc_getAssociatedObject(self, _cmd);
}

- (NLDateKit *)nl {
    NLDateKit *dateKit = [self ownNLDate];
    if (!dateKit) {
        dateKit = [[NLDateKit alloc] initWithDate:self];
        [self setOwnNLDate:dateKit];
    }
    return dateKit;
}

@end
