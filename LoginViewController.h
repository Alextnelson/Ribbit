//
//  LoginViewController.h
//  Ribbit
//
//  Created by Alexander Nelson on 10/23/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)login:(id)sender;


@end
