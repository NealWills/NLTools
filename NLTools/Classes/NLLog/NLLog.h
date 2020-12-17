//
//  NLLog.h
//  YYKitTest
//
//  Created by Administer on 2020/11/10.
//

#ifndef NLLog_h
#define NLLog_h

#import <Foundation/Foundation.h>

#ifdef DEBUG
#define NLLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#    define NLLog(fmt, ...)
#endif

@interface Log : NSObject

+ (void)Debug:(NSString *)format, ... ;
+ (void)Info:(NSString *)format, ... ;
+ (void)Failure:(NSString *)format, ... ;
+ (void)Error:(NSString *)format, ... ;

@end


#endif /* NLLog_h */
