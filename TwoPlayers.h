//
//  TwoPlayers.h
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LogicGames.h"

#define countQuestions 10
#define countImages 10

@interface TwoPlayers : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerFirstA;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerFirstB;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerFirstC;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerFirstD;

@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerSecondA;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerSecondB;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerSecondC;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayerSecondD;

@property (weak, nonatomic) IBOutlet UIImageView *viewFirst;
@property (weak, nonatomic) IBOutlet UIImageView *viewSecond;

+ (void) startGame;
- (void) game:(NSMutableArray*) arrayQuestionOnButton trueQuestion:(NSString*) trueQuestion;

@property (weak, nonatomic) IBOutlet UIProgressView *progressView;

- (IBAction)actionPressButton:(id)sender;

@end
