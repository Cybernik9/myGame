//
//  Question.h
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (strong, nonatomic) NSString* questionA;
@property (strong, nonatomic) NSString* questionB;
@property (strong, nonatomic) NSString* questionC;
@property (strong, nonatomic) NSString* questionD;

+ (Question*) randomQuestion;
+ (NSString*) cityIndex:(NSInteger) index;
+ (NSArray*) cityArray;

@end
