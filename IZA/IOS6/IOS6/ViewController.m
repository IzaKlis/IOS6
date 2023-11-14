//
//  ViewController.m
//  IOS6
//
//  Created by student on 14/11/2023.
//  Copyright © 2023 me.kozlowski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_informationButton setTitle:@"Information" forState:(UIControlStateNormal)];
    [_imageWI setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
}
-(IBAction)buttonClick :(id)sender{
    UIAlertController *alertDialog=[UIAlertController alertControllerWithTitle:NSLocalizedString(@"Information",nil) message:[NSString stringWithFormat:NSLocalizedString(@"The faculty is running %i programs at graduate and ungraduate level.", nil),4] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction *action){}];
    [alertDialog addAction:defaultAction];
    [self presentViewController:alertDialog animated:YES completion:nil];
    
}
@end
