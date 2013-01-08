//
//  JTCountryManager.h
//  Flag Hack
//
//  Created by Joel on 1/5/13.
//  Copyright (c) 2013 Joel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTCountryManager : NSObject

+ (void)updateCountryCode:(NSString *)code;
+ (NSString *)currentCountryCode;
+ (NSURL *)URLForHaxballSOL;

@end
