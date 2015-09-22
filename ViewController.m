//
//  ViewController.m
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import "ViewController.h"
#import "TwoPlayers.h"
#import "Question.h"
#include "LogicGames.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButton:(id)sender {
    
    if ([sender tag] == 1) {
        
        NSLog(@"ONE!");
        
    } else if ([sender tag] == 2){
        
        [TwoPlayers startGame];
        
    }
    
}
@end
