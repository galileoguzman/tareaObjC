//
//  ShowView.h
//  TareaObjC
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShowView : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgSingle;
@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblEdad;

- (IBAction)btnMenosTransparencia:(id)sender;
- (IBAction)btnMasTransparencia:(id)sender;


- (IBAction)btnRegresarSender:(id)sender;

@end
