//
//  SignupViewController.m
//  Ribbit
//
//  Created by Alexander Nelson on 10/23/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import "SignupViewController.h"
#import <Parse/Parse.h>

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)signup:(id)sender {
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *email = [self.emailAddressField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if ([username length] == 0 || [password length] == 0 || [email length] == 0) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Oops!" message:@"Make sure you enter a username, password and email address" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        PFUser *newUser = [PFUser user];
        newUser.username = username;
        newUser.password = password;
        newUser.email = email;

        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (error) {
                UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Sorry!" message:[error.userInfo objectForKey:@"error"] preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];

                [alert addAction:defaultAction];
                [self presentViewController:alert animated:YES completion:nil];
            } else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            }
        }];

        //more sequential code that runs right away!
    }
}
@end
