//
//  planet.m
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "planet.h"

@implementation planet

@synthesize name, moonCount, alienRaceCount, wantsToKillEarthlings, midiChlorianLevel, rebelBaseCount;

-(instancetype)init_with_name:(NSString *)p_name{
    self = [super init];
    name = p_name;
    return self;
}

-(instancetype)init_with_name:(NSString *)p_name
               and_moon_count:(int)m_count
              and_rebel_bases:(int)rebel_bases{
    self = [super init];
    name = p_name;
    moonCount = m_count;
    rebelBaseCount = rebel_bases;
    return self;
}

-(void) set_name:(NSString *)p_name and_moon_count:(int)m_count{
    name = p_name;
    moonCount = m_count;
}

-(void) set_name:(NSString *)p_name
  and_moon_count:(int)m_count
 and_alien_races:(int)alien_race_count
 and_rebel_bases:(int)rebel_base_count{
    name = p_name;
    moonCount = m_count;
    alienRaceCount = alien_race_count;
    rebelBaseCount = rebel_base_count;
}

//-(void)set_name:(NSString *)p_name{
//    name = p_name;
//}
//
//-(void)set_moon_count:(int)m_count{
//    moon_count = m_count;
//}
//
//-(void)set_alien_race_count:(int)aliens{
//    alien_race_count = aliens;
//}
//
//-(void)set_wants_to_kill_earthlings:(BOOL)earth_hostility{
//    wants_to_kill_earthlings = earth_hostility;
//}
//
//-(void)set_midi_chlorian_count:(float)midi_chlorian_count{
//    midi_chlorian_level = midi_chlorian_count;
//}
//
//-(NSString *)name{
//    return name;
//}
//
//-(int)moon_count{
//    return moon_count;
//}
//
//-(int)alien_race_count{
//    return alien_race_count;
//}
//
//-(BOOL)wants_to_kill_earthlings{
//    return wants_to_kill_earthlings;
//}
//
//-(float)midi_chlorian_level{
//    return midi_chlorian_level;
//}

-(void)print_info{
    NSLog(@"Our next planet is %@, it has %i moons, %i alien races, who absolutely %@ to kill earthlings. These guys have midi-chlorian levels of %f! Also there are %i known rebel bases here.", name, moonCount, alienRaceCount, wantsToKillEarthlings ? @"desire" : @"do not want", midiChlorianLevel, rebelBaseCount);
}

@end
