//
//  CameraViewControllerTableViewController.h
//  Ribbit
//
//  Created by Alexander Nelson on 10/24/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewControllerTableViewController : UITableViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIImagePickerController *imagePicker;

@end
