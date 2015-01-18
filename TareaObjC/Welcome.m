//
//  ViewController.m
//  TareaObjC
//
//  Created by Galileo Guzman on 17/01/15.
//  Copyright (c) 2015 Galileo Guzman. All rights reserved.
//

#import "Welcome.h"
#import "GlobalVars.h"

@interface Welcome ()

@end

@implementation Welcome

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    image = 0;
    imageArray = [[NSMutableArray alloc]
                  initWithObjects:@"homeroSimpson.jpg",
                  @"maggieSimpson.jpg",
                  @"margeSimpson.png",
                  @"bartSimpson.png",
                  @"LisaSimpson.png",
                  nil
                  ];
    
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBackSender:(id)sender {
    if (image > 0) {
        image--;
    }else{
        image = 4;
    }
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
}

- (IBAction)btnNextSender:(id)sender {
    if (image >= 4) {
        image = 0;
    }else{
        image++;
    }
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
}

- (IBAction)btnShowSender:(id)sender {
    
    [self performSegueWithIdentifier:@"GoToShowSingle" sender:self];
    
}
@end
