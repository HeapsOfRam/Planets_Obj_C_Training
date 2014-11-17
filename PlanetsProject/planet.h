//
//  planet.h
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface planet : NSObject
//    NSString *name;
//    int moon_count;
//    int alien_race_count;
//    BOOL wants_to_kill_earthlings;
//    float midi_chlorian_level;
//}

@property (nonatomic, strong) NSString *name;
@property int moonCount, alienRaceCount, rebelBaseCount;
@property BOOL wantsToKillEarthlings;
@property float midiChlorianLevel;


// Methods

-(instancetype)init_with_name: (NSString *)p_name;
-(instancetype)init_with_name:(NSString *)p_name
               and_moon_count:(int)m_count
              and_rebel_bases:(int)rebel_bases;

-(void) set_name: (NSString *) p_name
  and_moon_count: (int) m_count;

-(void) set_name: (NSString *) p_name
  and_moon_count: (int) m_count
 and_alien_races: (int) alien_race_count
 and_rebel_bases: (int) rebel_base_count;


//-(void)set_name:(NSString *)p_name;
//-(void)set_moon_count:(int)m_count;
//-(void)set_alien_race_count:(int)aliens;
//-(void)set_wants_to_kill_earthlings:(BOOL)earth_hostility;
//-(void)set_midi_chlorian_count:(float)midi_chlorian_count;
//
//-(NSString *)name;
//-(int)moon_count;
//-(int)alien_race_count;
//-(BOOL)wants_to_kill_earthlings;
//-(float)midi_chlorian_level;

-(void)print_info;
@end
