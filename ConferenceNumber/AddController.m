//
//  AddController.m
//  ConferenceNumber
//
//  Created by Albert Pascual on 4/22/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "AddController.h"


@implementation AddController

@synthesize phone, password, mySwitch;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction) saveInfo
{
    NSString *myKeyName = [[NSString alloc] init];
    // Save the infor and go back
    NSUserDefaults *myPrefs = [NSUserDefaults standardUserDefaults];
    if ( [myPrefs stringForKey:@"NumberOfRecords"] != nil )
    {
        NSInteger numberOfRecords = [[myPrefs stringForKey:@"NumberOfRecords"] intValue];
        myKeyName = [[NSString alloc] initWithFormat:@"Confy%d", numberOfRecords+1];
        [myPrefs setObject:[[NSString alloc] initWithFormat:@"%d", numberOfRecords+1 ] forKey:@"NumberOfRecords"];
    }
    else
    {   
        myKeyName = @"Confy1";
        [myPrefs setObject:@"1" forKey:@"NumberOfRecords"];
    }
    
    NSString *myValues = [[NSString alloc] initWithFormat:@"%@|%@|%@", self.phone.text, self.password.text, [self.mySwitch isOn] ? @"YES" : @"NO"];    
    
    [myPrefs setObject:myValues forKey:myKeyName];
    
    [myKeyName release];
    
    [self cancelAction];
}

- (IBAction) cancelAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
