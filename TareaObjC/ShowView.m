//
//  ShowView.m
//  TareaObjC
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "ShowView.h"
#import "GlobalVars.h"


@interface ShowView ()

@end

@implementation ShowView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    transparency = 1.0;
    
    //self.lblNombre.text = nombreArray[image];
    self.lblNombre.text = globalArray[1][image];
    self.lblEdad.text = globalArray[2][image];
    self.imgSingle.image = [UIImage imageNamed:imageArray[image]];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnMenosTransparencia:(id)sender {
    transparency = transparency - 0.2;
    [self.imgSingle setAlpha:transparency];
}

- (IBAction)btnMasTransparencia:(id)sender {
    transparency = transparency + 0.2;
    [self.imgSingle setAlpha:transparency];
    //self.imgSingle.alpha = transparency;
}

- (IBAction)btnRegresarSender:(id)sender {
    [self performSegueWithIdentifier:@"BackToWelcome" sender:self];
}
@end
