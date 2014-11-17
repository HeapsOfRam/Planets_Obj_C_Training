//
//  atlantian_warrior.h
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface atlantian_warrior : NSObject

@property (nonatomic, strong) NSString *name, *weaponWielded;
@property BOOL royalGuard;
@property int battlesWon;

-(instancetype)init_with_name:(NSString *) p_name
   and_weapon_wielded:(NSString *) weapon_wielded
      and_royal_guard:(BOOL) royal_guard
      and_battles_won:(int) battles_won;

-(NSString *)retrieve_data;

@end
