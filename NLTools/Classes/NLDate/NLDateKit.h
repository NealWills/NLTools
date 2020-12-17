//
//  NLDate.h
//  YYKitTest
//
//  Created by Administer on 2020/11/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NLDateKit : NSObject

@property (nonatomic, strong, readonly) NSDate *date;

///< Year component
@property (nonatomic, readonly) NSInteger year;
///< Year component
@property (nonatomic, readonly) NSInteger yyyy;

///< Month component (1~12)
@property (nonatomic, readonly) NSInteger month;
///< Month component (1~12)
@property (nonatomic, readonly) NSInteger MM;

///< Day component (1~31)
@property (nonatomic, readonly) NSInteger day;
///< Day component (1~31)
@property (nonatomic, readonly) NSInteger dd;

///< Hour component (0~23)
@property (nonatomic, readonly) NSInteger hour;
///< Hour component (0~23)
@property (nonatomic, readonly) NSInteger HH;

///< Minute component (0~59)
@property (nonatomic, readonly) NSInteger minute;
///< Minute component (0~59)
@property (nonatomic, readonly) NSInteger mm;

///< Second component (0~59)
@property (nonatomic, readonly) NSInteger second;
///< Second component (0~59)
@property (nonatomic, readonly) NSInteger ss;

///< Nanosecond component
@property (nonatomic, readonly) NSInteger nanosecond;
///< Nanosecond component
@property (nonatomic, readonly) NSInteger SSS;

///< Nanosecond component
@property (nonatomic, readonly) NSInteger TimeArea;
///< Nanosecond component
@property (nonatomic, readonly) NSInteger Z;

@property (nonatomic, readonly) NSInteger weekday; ///< Weekday component (1~7, first day is based on user setting)
@property (nonatomic, readonly) NSInteger weekdayOrdinal; ///< WeekdayOrdinal component
@property (nonatomic, readonly) NSInteger weekOfMonth; ///< WeekOfMonth component (1~5)
@property (nonatomic, readonly) NSInteger weekOfYear; ///< WeekOfYear component (1~53)
@property (nonatomic, readonly) NSInteger yearForWeekOfYear; ///< YearForWeekOfYear component
@property (nonatomic, readonly) NSInteger quarter; ///< Quarter component
@property (nonatomic, readonly) BOOL isLeapMonth; ///< whether the month is leap month
@property (nonatomic, readonly) BOOL isLeapYear; ///< whether the year is leap year

@property (nonatomic, readonly) NSTimeInterval timeIntervalFrom197001010000Z;
@property (nonatomic, readonly) NSTimeInterval timeIntervalSinceNow;


// MARK:- Init

- (instancetype)initWithDate:(NSDate *)date;



@end

NS_ASSUME_NONNULL_END
