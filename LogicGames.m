//
//  LogicGames.m
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import "LogicGames.h"
#import "Question.h"
#import "TwoPlayers.h"

@interface LogicGames ()

@property (assign, nonatomic) NSInteger indexQuestion;
//@property (strong, nonatomic) NSMutableArray* arrayImages;

@end

@implementation LogicGames

static NSInteger count = 0;
//static NSMutableArray* arrayImages;
static NSString* trueQuestion;
/*- (void) randomQuestion:(NSInteger)index playerOne:(TwoPlayers*) playerOne playerTwo:(TwoPlayers*) playerTwo {
    
    static NSMutableArray* arrayImages = [[NSMutableArray alloc] initWithArray:self.images];
    
}

- (void) randomImages:(TwoPlayers*) playerOne playerTwo:(TwoPlayers*) playerTwo {
    
    if (count == countQuestions) {
        [[[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Виграв гравець %d!!!",
                                             playerOne.questionTrue>playerTwo.questionTrue?1:2]
                                    message:[NSString stringWithFormat:
                                             @"Pезультат гравця 1: %ld\\%d\nРезультат гравця 2: %ld\\%d",
                                             (long)playerOne.questionTrue, countQuestions,
                                             (long)playerTwo.questionTrue, countQuestions]
                                   delegate:self
                          cancelButtonTitle:@"Нова гра"
                          otherButtonTitles:nil] show];
        
        //self.view.backgroundColor = [UIColor blackColor];
    } else {
        count++;
        
        NSInteger index = arc4random() % countImages + 1;
        if ([self.arrayNumberImages count] != 0) {
            for (NSInteger i=0; i<[self.arrayNumberImages count]; i++) {
                if([[NSString stringWithFormat:@"%ld",(long)index] isEqualToString:[self.arrayNumberImages objectAtIndex:i]]) {
                    index = arc4random() % countImages + 1;
                    i=-1;
                    continue;
                }
            }
        }
        
        [self.arrayNumberImages addObject:[NSString stringWithFormat:@"%ld",(long)index]];
        
        NSString* nameImage = [NSString stringWithFormat:@"%ld.jpg",(long)index];
        
        [playerOne.viewFirst setImage: [UIImage imageNamed:nameImage]];
        [playerTwo.viewSecond setImage: [UIImage imageNamed:nameImage]];
        [playerTwo.viewSecond setTransform:CGAffineTransformMakeRotation(-M_PI)];
        
        [self randomQuestion:(index) playerOne:playerOne playerTwo:playerTwo];
    }
}*/

+ (NSMutableArray*)shuffle:(NSMutableArray*) array {
    
    NSUInteger count = [array count];
    for (NSUInteger i = 0; i < count; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [array exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    return array;
}

+ (void) logicGame {

    static NSMutableArray* arrayImages;
    
    if (count == 0) {
        arrayImages = [[NSMutableArray alloc] init];
        [arrayImages addObjectsFromArray:[Question cityArray]];
        count++;
    } else count++;
    
    TwoPlayers* player = [[TwoPlayers alloc] init];
    
    NSMutableArray *questionArray = [[NSMutableArray alloc] init];
    [questionArray addObjectsFromArray:[Question cityArray]];
    questionArray = [self shuffle:arrayImages];
    arrayImages = [self shuffle:arrayImages];
    trueQuestion = [arrayImages objectAtIndex:0];
    [arrayImages removeObjectAtIndex:0];
    
    NSMutableArray* arrayQuestionOnButton = [[NSMutableArray alloc] init];
    [arrayQuestionOnButton addObject:trueQuestion];
    for (int i=0; i<3; i++) {
        if ([[arrayQuestionOnButton objectAtIndex:0] isEqualToString:[questionArray objectAtIndex:i]]) {
            [questionArray removeObjectAtIndex:i];
        }
        
        [arrayQuestionOnButton addObject:[questionArray objectAtIndex:i]];
    }
    arrayQuestionOnButton = [self shuffle:arrayQuestionOnButton];
    
    [player game:arrayQuestionOnButton trueQuestion:trueQuestion];
}

+ (NSString*) getTrueQuestion {
    return trueQuestion;
}








@end
