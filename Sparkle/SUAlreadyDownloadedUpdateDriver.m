//
//  SUAlreadyDownloadedUpdateDriver.m
//  Sparkle
//
//  Created by Deadpikle on 12/20/17.
//  Copyright © 2017 Sparkle Project. All rights reserved.
//
//  WARNING: THIS IS A HACKY HACK DRIVER FOR TESTING. DO NOT USE.

#import "SUAlreadyDownloadedUpdateDriver.h"

@implementation SUAlreadyDownloadedUpdateDriver

- (instancetype)initWithUpdater:(id<SUUpdaterPrivate>)anUpdater
{
    if ((self = [super initWithUpdater:anUpdater])) {
        self.automaticallyInstallUpdates = NO;
        self.showErrors = YES;
    }
    return self;
}

-(void)setAppCastItem:(SUAppcastItem*)item {
    [super overrideAppCastItem:item];
}

- (void)checkForUpdatesAtURL:(NSURL *)__unused URL host:(SUHost *) h {
    // do nothing. we have the item. Report back that we have the item.
    self.host = h;
    [self checkIfItemDownloadedAlready];
    [self showUpdateAlert];
}

@end
