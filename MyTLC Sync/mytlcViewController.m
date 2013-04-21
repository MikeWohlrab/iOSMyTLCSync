//
//  mytlcViewController.m
//  MyTLC Sync
//
//  Created by Devin Collins on 4/17/13.
//  Copyright (c) 2013 Layer 8 Applications. All rights reserved.
//

#import "mytlcViewController.h"

@interface mytlcViewController ()

@end

@implementation mytlcViewController

@synthesize txtUsername;
@synthesize txtPassword;

- (IBAction)buttonPressed {
    NSString* username = txtUsername.text;
    NSString* password = txtPassword.text;
    if ((![username isEqualToString:@""]) && (![password isEqualToString:@""])) {
        NSLog(@"Username: %@\nPassword: %@", username, password);
    } else if ((![username isEqualToString:@""]) && ([password isEqualToString:@""])) {
        NSLog(@"Username: %@", username);
    } else if (([username isEqualToString:@""]) && (![password isEqualToString:@""])) {
        NSLog(@"Password: %@", password);
    } else {
        NSLog(@"No information");
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
