//
//  NLDate.m
//  YYKitTest
//
//  Created by Administer on 2020/11/11.
//

#import "NLDateKit.h"

@interface NLDateKit ()

@property (nonatomic, strong) NSDate *base;

@end

@implementation NLDateKit

- (NSInteger)year {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitYear fromDate:self.base] year];
}
- (NSInteger)yyyy {
    return self.year;
}

- (NSInteger)month {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitMonth fromDate:self.base] month];
}
- (NSInteger)MM {
    return self.month;
}

- (NSInteger)day {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitDay fromDate:self.base] day];
}
- (NSInteger)dd {
    return self.day;
}

- (NSInteger)hour {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitHour fromDate:self.base] hour];
}
- (NSInteger)HH {
    return self.hour;
}

- (NSInteger)minute {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitMinute fromDate:self.base] minute];
}
- (NSInteger)mm {
    return self.minute;
}

- (NSInteger)second {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitSecond fromDate:self.base] second];
}
- (NSInteger)ss {
    return self.second;
}

- (NSInteger)nanosecond {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitSecond fromDate:self.base] nanosecond];
}
- (NSInteger)SSS {
    return self.nanosecond;
}

- (NSInteger)weekday {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekday fromDate:self.base] weekday];
}

- (NSInteger)weekdayOrdinal {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekdayOrdinal fromDate:self.base] weekdayOrdinal];
}

- (NSInteger)weekOfMonth {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekOfMonth fromDate:self.base] weekOfMonth];
}

- (NSInteger)weekOfYear {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitWeekOfYear fromDate:self.base] weekOfYear];
}

- (NSInteger)yearForWeekOfYear {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitYearForWeekOfYear fromDate:self.base] yearForWeekOfYear];
}

- (NSInteger)quarter {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitQuarter fromDate:self.base] quarter];
}

- (BOOL)isLeapMonth {
    return [[[NSCalendar currentCalendar] components:NSCalendarUnitQuarter fromDate:self.base] isLeapMonth];
}

- (BOOL)isLeapYear {
    NSUInteger year = self.year;
    return ((year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0)));
}

- (NSTimeInterval)timeIntervalFrom197001010000Z {
    return [self.base timeIntervalSince1970];
}



//MARK:- Init

- (instancetype)initWithDate:(NSDate *)date {
    self = [super init];
    if (self) {
        self.base = date;
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.base = [NSDate date];
    }
    return self;
}

@end
