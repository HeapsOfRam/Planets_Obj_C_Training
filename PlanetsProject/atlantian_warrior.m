//
//  atlantian_warrior.m
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "atlantian_warrior.h"

@implementation atlantian_warrior

@synthesize name, weaponWielded, royalGuard, battlesWon;

-(instancetype)init_with_name:(NSString *)p_name
   and_weapon_wielded:(NSString *)weapon_wielded
      and_royal_guard:(BOOL)royal_guard
      and_battles_won:(int)battles_won{
    
    self = [super init];
    
    name = p_name;
    weaponWielded = weapon_wielded;
    royalGuard = royal_guard;
    battlesWon = battles_won;
    
    return self;
}

-(NSString *)retrieve_data{
    NSString * result_string = [NSString stringWithFormat:@"%@ is an Atlantian Warrior who wields the %@ and has won %i battles. The warrior %@ a part of the royal guard", name, weaponWielded, battlesWon, royalGuard ? @"is" : @"is_not"];
    return result_string;
}

@end
