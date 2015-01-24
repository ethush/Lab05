//
//  ViewController.m
//  Lab05
//
//  Created by Alejandra B on 24/01/15.
//  Copyright (c) 2015 alebautista. All rights reserved.
//

#import "colors.h"

@interface colors ()

@end
NSInteger intRed;
NSInteger intGreen;
NSInteger intBlue;
NSInteger contador=0;
NSInteger valorsl;

NSTimer *timer;



@implementation colors

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slRed:(id)sender {
    
    //self.lblColors.text = [NSString stringWithFormat:@"%0.0f", self.slRed.value];
    
    intRed = self.slRed.value;
    
    
    self.lblColors.text = [NSString stringWithFormat:@"%ld", (long)intRed];
    
    self.lblColors.backgroundColor = [UIColor colorWithRed:(intRed/255.0) green:(intGreen/255.0) blue:(intBlue/255.0) alpha:1.0f];
    
}

- (IBAction)slGreen:(id)sender {
    
    //self.lblColors.text = [NSString stringWithFormat:@"%0.0f", self.slGreen.value];

    
    intGreen = self.slGreen.value;
    
    
    self.lblColors.text = [NSString stringWithFormat:@"%ld", (long)intGreen];
    
    self.lblColors.backgroundColor = [UIColor colorWithRed:(intRed/255.0) green:(intGreen/255.0) blue:(intBlue/255.0) alpha:1.0f];}

- (IBAction)slBlue:(id)sender {
    
   // self.lblColors.text = [NSString stringWithFormat:@"%0.0f", self.slBlue.value];
    
    intBlue = self.slBlue.value;
    
    
    self.lblColors.text = [NSString stringWithFormat:@"%ld", (long)intBlue];
    
    self.lblColors.backgroundColor = [UIColor colorWithRed:(intRed/255.0) green:(intGreen/255.0) blue:(intBlue/255.0) alpha:1.0f];
}

- (IBAction)slBlink:(id)sender {
       self.lblColors.alpha = 0;
    [UIView animateWithDuration: 1 delay:0.5 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{self.lblColors.alpha = 1;} completion: nil];
    valorsl = self.slBlink.value;
    self.lblColors.text = [NSString stringWithFormat:@"%ld", (long)valorsl];
    
    [timer invalidate];
    contador = 0;

    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(my_timer) userInfo:nil repeats: YES];
    
}

- (void) my_timer {
    
    if(contador < valorsl){
    
        
        NSLog([NSString stringWithFormat:@"%ld", (long)contador]);
        contador++;
    }
    if(contador >= valorsl)
    {
        
        NSLog(@"Terminado");
       [timer invalidate];
      //  [timer finalize];
        
       // timer invalidate];
        timer = nil;

        
       [self.lblColors.layer removeAllAnimations];
        self.lblColors.alpha = 1;

    }
   
   // NSLog([NSString stringWithFormat:@"%ld", (long)contador]);
    
}

@end
