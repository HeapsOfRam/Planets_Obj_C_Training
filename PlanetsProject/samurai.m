//
//  samurai.m
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "samurai.h"

@implementation samurai

@synthesize name, swordSchool, ronin;

-(NSString *)data_retrieve{
    NSString *result_string = (@"%@ is a samurai who follows the %@ school of swordsmanship and %@ a lord", name, swordSchool, (ronin) ? @"does not have" : @"has");
    return result_string;
}

@end
