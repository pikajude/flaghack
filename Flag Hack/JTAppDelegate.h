//
//  JTAppDelegate.h
//  Flag Hack
//
//  Created by Joel on 1/4/13.
//  Copyright (c) 2013 Joel. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "JTCountryManager.h"

@interface JTAppDelegate : NSObject <NSApplicationDelegate> {
    NSInteger backupIdx;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSPopUpButton *countries;
@property (assign) IBOutlet NSProgressIndicator *progInd;

- (void)pickCountry:(NSMenuItem *)sender;
- (void)changeCountry:(NSMenuItem *)sender;
- (void)errorBegin:(NSString *)err;
- (void)errorCleanup;

- (IBAction)selectCurrentCountry:(id)sender;
- (IBAction)refresh:(id)sender;

@end
