//
//  OnePlayer.h
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OnePlayer : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonForOnePlayerA;
@property (weak, nonatomic) IBOutlet UIButton *buttonForOnePlayerB;
@property (weak, nonatomic) IBOutlet UIButton *buttonForOnePlayerC;
@property (weak, nonatomic) IBOutlet UIButton *buttonForOnePlayerD;

@property (weak, nonatomic) IBOutlet UIView *viewForOnePlayer;

@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

- (IBAction)actionPressButton:(id)sender;

@end
