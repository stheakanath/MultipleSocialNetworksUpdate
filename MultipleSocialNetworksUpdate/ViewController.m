//
//  ViewController.m
//  MultipleSocialNetworksUpdate
//
//  Created by Thomas Theakanath on 7/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)sendbuttonclicked
{
    //Facebook part
    NSString *resultString = [NSString stringWithFormat:@"http://sobryapps.com/stheakanath/phpfiles/postToWall.php?message=%@", messagefield.text];
    NSURL *resultURL = [NSURL URLWithString:[resultString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSError *error;
    NSString *convertResult = [NSString stringWithContentsOfURL:resultURL encoding:NSASCIIStringEncoding error:&error];
    
    //Twitter part
    NSString *resultString2 = [NSString stringWithFormat:@"http://sobryapps.com/stheakanath/phpfiles/tweet.php?message=%@", messagefield.text];
    NSURL *resultURL2 = [NSURL URLWithString:[resultString2 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSError *error2;
    NSString *convertResult2 = [NSString stringWithContentsOfURL:resultURL2 encoding:NSASCIIStringEncoding error:&error2];
    
    //Saying it's done
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Done" message: convertResult delegate: self cancelButtonTitle: @"OK" otherButtonTitles: nil];
    [alert show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
