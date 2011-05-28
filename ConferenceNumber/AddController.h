//
//  AddController.h
//  ConferenceNumber
//
//  Created by Albert Pascual on 4/22/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AddController : UIViewController {
    
    UITextField *phone;
    UITextField *password;
    
    UISwitch *mySwitch;
}

@property (nonatomic,retain) IBOutlet UITextField *phone;
@property (nonatomic,retain) IBOutlet UITextField *password;

@property (nonatomic,retain) IBOutlet UISwitch *mySwitch;

- (IBAction) saveInfo;
- (IBAction) cancelAction;

@end
