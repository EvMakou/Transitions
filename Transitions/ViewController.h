//
//  ViewController.h
//  Transitions
//
//  Created by supermacho on 07.11.17.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIImageView *america;
@property (weak, nonatomic) IBOutlet UIImageView *hulk;




- (IBAction)transitionButton:(id)sender;
- (IBAction)hulkPress:(id)sender;
- (IBAction)americaPress:(id)sender;

@end

