//
//  mytlcViewController.m
//  MyTLC Sync
//
//  Created by Devin Collins on 4/17/13.
//  Copyright (c) 2013 Layer 8 Applications. All rights reserved.
//

#import "mytlcViewController.h"

@interface mytlcViewController ()
- (NSString*)parseToken:(NSString*)data;
- (NSString*)getData;
@end

@implementation mytlcViewController

@synthesize txtUsername;
@synthesize txtPassword;

NSString* username;
NSString* password;

NSString* loginToken;

- (IBAction)buttonPressed {
    username = txtUsername.text;
    password = txtPassword.text;
    [self runEvents];
}

- (NSString*) runEvents {
    NSString* tempToken = nil;
    NSString* securityToken = nil;

    NSString* data = [self getData:@"https://mytlc.bestbuy.com"];
    if (data) {
        tempToken = [self parseToken:data];
    } else {
        return nil;
    }
    if (tempToken) {
        
    }
    return nil;
}

- (NSString*) parseToken:(NSString*)data {
    if ([data rangeOfString:@"End Hotkey for submit"].location == NSNotFound) {
        return nil;
    } else {
        NSRange end = [data rangeOfString:@"End Hotkey for submit"];
        data = [data substringFromIndex:end.location];
    }
    if (([data rangeOfString:@"hidden"].location == NSNotFound) && ([data rangeOfString:@"url_login_token"].location == NSNotFound)) {
        return nil;
    } else {
        NSRange beginning = [data rangeOfString:@"hidden"];
        data = [data substringFromIndex:beginning.location + 14];
        NSRange end = [data rangeOfString:@"url_login_token"];
        data = [data substringToIndex:end.location - 7];
    }
    return data;
}

- (NSString*) getData:(NSString*)url {
    NSURL* urlRequest = [NSURL URLWithString:url];
    NSError* err = nil;
    NSString* result = [NSString stringWithContentsOfURL:urlRequest encoding:NSUTF8StringEncoding error:&err];
    if (!err) {
        return result;
    } else {
        return nil;
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
