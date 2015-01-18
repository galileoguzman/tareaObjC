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
    
    //Inicializamos posición y valores del arreglo
    image = 0;
    imageArray = [[NSMutableArray alloc]
                  initWithObjects:@"homeroSimpson.jpg",
                  @"maggieSimpson.jpg",
                  @"margeSimpson.png",
                  @"bartSimpson.png",
                  @"LisaSimpson.png",
                  nil
                  ];
    nombreArray = [[NSMutableArray alloc]
                   initWithObjects:@"Homero Simpson",
                   @"Maggie Simpson",
                   @"Marge Simpson",
                   @"Bart Simpson",
                   @"Lisa Simpson",
                   nil
                   ];
    edadArray = [[NSMutableArray alloc]
                 initWithObjects:@"40",
                 @"2",
                 @"35",
                 @"12",
                 @"9",
                 nil
                 ];
    
    longitudArray = (int)imageArray.count;
    //NSLog(@"value : %lu %d", (unsigned long)(int)[imageArray count], longitudArray);
    
    //Unimos los arreglos en uno
    globalArray = [NSMutableArray arrayWithObjects:
                   imageArray,
                   nombreArray,
                   edadArray,
                   nil];
    
    
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
        image = (longitudArray-1);
    }
    self.imgImage.image = [UIImage imageNamed:imageArray[image]];
}

- (IBAction)btnNextSender:(id)sender {
    if (image >= (longitudArray-1)) {
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
