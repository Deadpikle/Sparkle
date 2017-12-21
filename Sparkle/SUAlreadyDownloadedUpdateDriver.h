//
//  SUAlreadyDownloadedUpdateDriver.h
//  Sparkle
//
//  Created by Deadpikle on 12/20/17.
//  Copyright © 2017 Sparkle Project. All rights reserved.
//
//  WARNING: THIS IS A HACKY HACK DRIVER FOR TESTING. DO NOT USE.

#import "SUUIBasedUpdateDriver.h"

#import "SUAppcastItem.h"

@interface SUAlreadyDownloadedUpdateDriver : SUUIBasedUpdateDriver

-(void)setAppCastItem:(SUAppcastItem*)item;

@end
