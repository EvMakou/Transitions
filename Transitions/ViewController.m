//
//  ViewController.m
//  Transitions
//
//  Created by supermacho on 07.11.17.
//  Copyright © 2017 student. All rights reserved.
//

#import "ViewController.h"
#import "Transitions-Swift.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (nonatomic, strong) SecondViewController* secondVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.image.layer.cornerRadius = 30.f;
    self.image.clipsToBounds = YES;
    
    self.hulk.layer.cornerRadius = 30.f;
    self.hulk.clipsToBounds = YES;
    
    self.america.layer.cornerRadius = 30.f;
    self.america.clipsToBounds = YES;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)transitionButton:(id)sender {
    
    self.secondVC = [[SecondViewController alloc] init];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil]; 
    self.secondVC = [storyboard instantiateViewControllerWithIdentifier:@"ID"];
    //self.secondVC.view.backgroundColor = [];
    [self.secondVC cc_setZoomTransitionWithOriginalView:self.image];
    [self presentViewController:self.secondVC animated:YES completion:nil];
    
}

- (IBAction)hulkPress:(id)sender {
    
    self.secondVC = [[SecondViewController alloc] init];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.secondVC = [storyboard instantiateViewControllerWithIdentifier:@"ID"];
    //self.secondVC.view.backgroundColor = [];
    [self.secondVC cc_setZoomTransitionWithOriginalView:self.hulk];
    [self presentViewController:self.secondVC animated:YES completion:nil];
    
}

- (IBAction)americaPress:(id)sender {
    
    self.secondVC = [[SecondViewController alloc] init];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.secondVC = [storyboard instantiateViewControllerWithIdentifier:@"ID"];
    //self.secondVC.view.backgroundColor = [];
    [self.secondVC cc_setZoomTransitionWithOriginalView:self.america];
    [self presentViewController:self.secondVC animated:YES completion:nil];
}
@end
