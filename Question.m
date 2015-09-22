//
//  Question.m
//  myGame
//
//  Created by Admin on 06.07.15.
//  Copyright (c) 2015 HY. All rights reserved.
//

#import "Question.h"

@implementation Question

static NSString* city[] = {
    @"Paris", @"London", @"Berlin", @"Lviv", @"Kyiv",
    @"Krakow", @"Warsaw", @"Oslo", @"Moscow", @"St. Petersburg"
};

static int cityCount = 10;

+ (NSString*) randomQuestion {
    return city[arc4random()%cityCount+1];
}

+ (NSString*) cityIndex:(NSInteger) index {
    return city[index];
}

+ (NSArray*) cityArray {
    
    NSMutableArray* array = [[NSMutableArray alloc] init];
    
    for (int i=0; i<cityCount; i++) {
        [array addObject:city[i]];
    }
    
    return array;
}

@end
