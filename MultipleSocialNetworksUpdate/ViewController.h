//
//  ViewController.h
//  MultipleSocialNetworksUpdate
//
//  Created by Thomas Theakanath on 7/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSString *message;
    IBOutlet UITextField *messagefield;
    IBOutlet UIButton *sendmessage;
}

-(IBAction)sendbuttonclicked;

@end
