//
//  JTCountryManager.m
//  Flag Hack
//
//  Created by Joel on 1/5/13.
//  Copyright (c) 2013 Joel. All rights reserved.
//

#import "JTCountryManager.h"

@implementation JTCountryManager

+ (void)updateCountryCode:(NSString *)code
{
    NSURL *s = [self URLForHaxballSOL];
    NSData *sol = [[[NSData alloc] initWithContentsOfURL:s] autorelease];
    NSData *countryCode = [@"countryCode" dataUsingEncoding:NSUTF8StringEncoding];
    NSRange found = [sol rangeOfData:countryCode options:NSDataSearchBackwards range:NSMakeRange(0, [sol length])];
    
    NSMutableData *d = [NSMutableData data];
    
    if(found.location == NSNotFound)
        @throw nil;
    
    [d appendData:[sol subdataWithRange:NSMakeRange(0, found.location + 13)]];
    [d appendData:[code dataUsingEncoding:NSUTF8StringEncoding]];
    [d appendData:[sol subdataWithRange:NSMakeRange(found.location + 15, [sol length] - 15 - found.location)]];
    
    NSError *err = nil;
    
    [d writeToURL:s options:NSDataWritingAtomic error:&err];
    
    if(err != nil)
        NSLog(@"%@", [err localizedDescription]);
}

+ (NSString *)currentCountryCode
{
    NSData *sol = [[[NSData alloc] initWithContentsOfURL:[self URLForHaxballSOL]] autorelease];
    NSData *countryCode = [@"countryCode" dataUsingEncoding:NSUTF8StringEncoding];
    NSRange found = [sol rangeOfData:countryCode
                             options:NSDataSearchBackwards
                               range:NSMakeRange(0, [sol length])];
    
    if(found.location == NSNotFound)
        @throw nil;
    
    return [[[NSString alloc] initWithData:[sol subdataWithRange:NSMakeRange(found.location + 13, 2)] encoding:NSUTF8StringEncoding] autorelease];
}

+ (NSURL *)URLForHaxballSOL
{
    NSString *flashPlayer = [@"~/Library/Preferences/Macromedia/Flash Player/#SharedObjects" stringByExpandingTildeInPath];
    NSError *err = nil;
    NSArray *contents = [[[NSFileManager defaultManager] contentsOfDirectoryAtPath:flashPlayer error:&err] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"NOT (self beginswith '.')"]];
    
    if (err != nil)
        @throw nil;
    if([contents count] < 1)
        @throw nil;
    
    NSString *subdir = [contents objectAtIndex:0];
    NSString *newPath = [[[flashPlayer stringByAppendingPathComponent:subdir] stringByAppendingPathComponent:@"www.haxball.com"] stringByAppendingPathComponent:@"UserOptions.sol"];
    
    if([[NSFileManager defaultManager] fileExistsAtPath:newPath])
        return [NSURL fileURLWithPath:newPath];
    else
        @throw nil;
}

@end
