//
//  ViewController.h
//  TareaObjC
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Welcome : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgImage;

- (IBAction)btnBackSender:(id)sender;
- (IBAction)btnNextSender:(id)sender;
- (IBAction)btnShowSender:(id)sender;

@end

