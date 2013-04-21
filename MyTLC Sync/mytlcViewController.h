//
//  mytlcViewController.h
//  MyTLC Sync
//
//  Created by Devin Collins on 4/17/13.
//  Copyright (c) 2013 Layer 8 Applications. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mytlcViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtUsername;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;

- (IBAction)buttonPressed;

@end
