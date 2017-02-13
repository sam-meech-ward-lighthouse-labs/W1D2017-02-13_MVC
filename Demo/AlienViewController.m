//
//  ViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2017-02-13.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "AlienViewController.h"
#import "Aliens.h"

@interface AlienViewController ()

@property (weak, nonatomic) IBOutlet UILabel *numberOfEyesLabel;
@property (weak, nonatomic) IBOutlet UILabel *skinColor;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AlienViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.alien = [[Aliens alloc] init];
    
    self.alien.numberOfEyes = 7;
//    self.alien.skinColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1.0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlienData:(UIButton *)sender {
    self.numberOfEyesLabel.text = [NSString stringWithFormat:@"number of eyes: %i", self.alien.numberOfEyes];
    
//    if (self.alien.skinColor) {
//        self.view.backgroundColor = self.alien.skinColor;
//    } else {
//        self.view.backgroundColor = [UIColor magentaColor];
//    }
    
    self.view.backgroundColor = self.alien.skinColor ? self.alien.skinColor : [UIColor magentaColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches began from view controller");
    
    [self.textField resignFirstResponder];
}


@end
