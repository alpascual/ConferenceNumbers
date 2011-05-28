//
//  DetailViewController.m
//  ConferenceNumber
//
//  Created by Albert Pascual on 4/23/11.
//  Copyright 2011 Al. All rights reserved.
//

#import "DetailViewController.h"


@implementation DetailViewController

@synthesize row,description;
@synthesize callButton,deleteButton,cancelButton;
@synthesize nameLabel,passwordLabel,promptLabel;

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
    
    NSArray *chunks = [self.description componentsSeparatedByString: @"|"];
    
    self.nameLabel.text = [[NSString alloc] initWithFormat:@"%@", [chunks objectAtIndex:0]];    
    self.passwordLabel.text = [[NSString alloc] initWithFormat:@"%@", [chunks objectAtIndex:1]];
    self.promptLabel.text = [[NSString alloc] initWithFormat:@"%@", [chunks objectAtIndex:2]];
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

- (IBAction) makeCall
{
   [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@,,,,,,,,,,,%@", self.nameLabel.text, self.passwordLabel.text]]];
    
    
   // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:%@", self.nameLabel.text]]];
}

- (IBAction) deleteAction
{
    NSUserDefaults *myPrefs = [NSUserDefaults standardUserDefaults];
    if ( [myPrefs stringForKey:@"NumberOfRecords"] != nil )
    {
        NSInteger numberOfRecords = [[myPrefs stringForKey:@"NumberOfRecords"] intValue];     
        if ( numberOfRecords > row )
        {       
            for(int i=self.row; i<= numberOfRecords; i++)
            {
                if ( i+1 <= numberOfRecords)
                {
                    NSString *anObject = [myPrefs stringForKey:[NSString stringWithFormat:@"Confy%d", i+1]];
                    
                    [myPrefs setObject:anObject forKey:[[NSString alloc] initWithFormat:@"Confy%d", i]];
                    
                }
            }
        }
        
        [myPrefs setObject:[[NSString alloc] initWithFormat:@"%d", numberOfRecords-1 ] forKey:@"NumberOfRecords"];
    }
    
    [self cancelAction];

}

- (IBAction) cancelAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
