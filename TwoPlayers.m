//
//  TwoPlayers.m
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import "TwoPlayers.h"
#import "LogicGames.h"
#import "Question.h"

@implementation TwoPlayers

static int questionTruePlayerOne;
static int questionTruePlayerTwo;
static NSMutableArray* arrayImages;
static NSString* trueQuestion;


+ (void) startGame {
    
    //[LogicGames copyImages];
    [LogicGames logicGame];
    
}

- (void) game:(NSMutableArray*) arrayQuestionOnButton trueQuestion:(NSString*) trueQuestion {
 
    
    
    //[player.buttonPlayerFirstA setTitle:[arrayQuestionOnButton objectAtIndex:0] forState:UIControlStateNormal];
    //[self.buttonPlayerFirstB setTitle:[arrayQuestionOnButton objectAtIndex:1] forState:UIControlStateNormal];
    //[self.buttonPlayerFirstC setTitle:[arrayQuestionOnButton objectAtIndex:2] forState:UIControlStateNormal];
    //[self.buttonPlayerFirstD setTitle:[arrayQuestionOnButton objectAtIndex:3] forState:UIControlStateNormal];
    
    //player.buttonPlayerFirstA.titleLabel.text = [arrayQuestionOnButton objectAtIndex:0];
    self.buttonPlayerFirstA.titleLabel.text = @"nnnn";
    [self.buttonPlayerFirstA setTitle:self.buttonPlayerFirstA.titleLabel.text forState:UIControlStateNormal];
    
    [self.buttonPlayerFirstA setTitle:@"Calibration" forState:UIControlStateNormal];
    
    [self.buttonPlayerSecondA setTitle:[arrayQuestionOnButton objectAtIndex:0] forState:UIControlStateNormal];
    [self.buttonPlayerSecondA setTransform:CGAffineTransformMakeRotation(-M_PI)];
    [self.buttonPlayerSecondB setTitle:[arrayQuestionOnButton objectAtIndex:1] forState:UIControlStateNormal];
    [self.buttonPlayerSecondB setTransform:CGAffineTransformMakeRotation(-M_PI)];
    [self.buttonPlayerSecondC setTitle:[arrayQuestionOnButton objectAtIndex:2] forState:UIControlStateNormal];
    [self.buttonPlayerSecondC setTransform:CGAffineTransformMakeRotation(-M_PI)];
    [self.buttonPlayerSecondD setTitle:[arrayQuestionOnButton objectAtIndex:3] forState:UIControlStateNormal];
    [self.buttonPlayerSecondD setTransform:CGAffineTransformMakeRotation(-M_PI)];
    
    NSString* nameImage = [NSString stringWithFormat:@"%@.jpg",trueQuestion];
    [self.viewFirst setImage:[UIImage imageNamed:nameImage]];
    [self.viewSecond setImage:[UIImage imageNamed:nameImage]];
    [self.viewSecond setTransform:CGAffineTransformMakeRotation(-M_PI)];

    
}

- (IBAction)actionPressButton:(id)sender {
    
    static float time = 0.0;
    self.progressView.progress = time;
    
    
    static BOOL isFirstPlayersClic = NO;
    static BOOL isSecondPlayersClic = NO;
    
    NSString *title = [(UIButton *)sender currentTitle];
    
    if ([sender tag] >= 1 && [sender tag] <= 4) {
        isFirstPlayersClic = YES;
        if ([title isEqualToString:[LogicGames getTrueQuestion]]) {
            questionTruePlayerOne++;
        }
    } else if ([sender tag] >= 11 && [sender tag] <= 14) {
        isSecondPlayersClic = YES;
        if ([title isEqualToString:[LogicGames getTrueQuestion]]) {
            questionTruePlayerTwo++;
        }
    }
    
    if (isFirstPlayersClic && isSecondPlayersClic) {
        
        isFirstPlayersClic = NO;
        isSecondPlayersClic = NO;
        time+=0.1;
        
        [TwoPlayers startGame];
    }
}

 @end
