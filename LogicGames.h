//
//  LogicGames.h
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TwoPlayers.h"

@interface LogicGames : UIViewController

//- (void) randomQuestion:(NSInteger)index playerOne:(TwoPlayers*) playerOne playerTwo:(TwoPlayers*) playerTwo;
//- (void) randomImages:(TwoPlayers*) playerOne playerTwo:(TwoPlayers*) playerTwo;

+ (void) copyImages;
+ (void) logicGame;
+ (NSMutableArray*)shuffle:(NSMutableArray*) array;
+ (NSString*) getTrueQuestion;
@end
