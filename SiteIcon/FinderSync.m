//
//  FinderSync.m
//  SiteIcon
//
//  Created by José Morais on 2/18/16.
//  Copyright © 2016 José Morais. All rights reserved.
//

#import "FinderSync.h"

@interface FinderSync ()

@property NSURL *myFolderURL;

@end

@implementation FinderSync

- (instancetype)init {
    self = [super init];

    // Set up the directory we are syncing.
    self.myFolderURL = [NSURL fileURLWithPath:@"/Users/jmorais/Sites"];
    [FIFinderSyncController defaultController].directoryURLs = [NSSet setWithObject:self.myFolderURL];
  
    return self;
}

#pragma mark - Primary Finder Sync protocol methods

- (void)beginObservingDirectoryAtURL:(NSURL *)url {
  // The user is now seeing the container's contents.
  // If they see it in more than one view at a time, we're only told once.
  NSLog(@"beginObservingDirectoryAtURL:%@", url.filePathURL);
}

- (void)endObservingDirectoryAtURL:(NSURL *)url {
  // The user is no longer seeing the container's contents.
  NSLog(@"endObservingDirectoryAtURL:%@", url.filePathURL);
}

- (IBAction)sampleAction:(id)sender {
  NSURL* target = [[FIFinderSyncController defaultController] targetedURL];
  NSArray* items = [[FIFinderSyncController defaultController] selectedItemURLs];
  
  NSLog(@"sampleAction: menu item: %@, target = %@, items = ", [sender title], [target filePathURL]);
  [items enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
    NSLog(@"    %@", [obj filePathURL]);
  }];
}


@end

