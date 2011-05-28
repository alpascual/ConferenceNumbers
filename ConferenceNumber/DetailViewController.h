//
//  DetailViewController.h
//  ConferenceNumber
//
//  Created by Albert Pascual on 4/23/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController {
    
    NSInteger row;
    NSString *description;
    
    UIButton *callButton;
    UIButton *deleteButton;
    UIButton *cancelButton;
    
    UILabel *nameLabel;
    UILabel *passwordLabel;
    UILabel *promptLabel;
}

@property (nonatomic) NSInteger row;
@property (nonatomic,retain) NSString *description;

@property (nonatomic,retain) IBOutlet UIButton *callButton;
@property (nonatomic,retain) IBOutlet UIButton *deleteButton;
@property (nonatomic,retain) IBOutlet UIButton *cancelButton;

@property (nonatomic,retain) IBOutlet UILabel *nameLabel;
@property (nonatomic,retain) IBOutlet UILabel *passwordLabel;
@property (nonatomic,retain) IBOutlet UILabel *promptLabel;

- (IBAction) makeCall;
- (IBAction) deleteAction;
- (IBAction) cancelAction;

@end
