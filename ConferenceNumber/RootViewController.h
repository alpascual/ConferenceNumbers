//
//  RootViewController.h
//  ConferenceNumber
//
//  Created by Albert Pascual on 4/22/11.
//  Copyright 2011 Al. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DetailViewController.h"

@interface RootViewController : UITableViewController {

    NSMutableArray *listOfItems;
}

@property (nonatomic,retain) NSMutableArray *listOfItems;

@end
