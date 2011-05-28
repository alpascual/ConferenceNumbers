//
//  ConferenceNumberAppDelegate.h
//  ConferenceNumber
//
//  Created by Albert Pascual on 4/22/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddController.h"
#import "AboutViewController.h"

@interface ConferenceNumberAppDelegate : NSObject <UIApplicationDelegate> {

    UIBarButtonItem *addButton;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *addButton;

- (IBAction) addButtonCalled;
- (IBAction) aboutCalled;

@end
