//
//  SignupViewController.h
//  Ribbit
//
//  Created by Alexander Nelson on 10/23/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *emailAddressField;

- (IBAction)signup:(id)sender;

@end
