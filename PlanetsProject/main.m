//
//  main.m
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface planet : NSObject//{
//    NSString *name;
//    int moon_count;
//    int alien_race_count;
//    BOOL wants_to_kill_earthlings;
//    float midi_chlorian_level;
//}

@property (nonatomic, strong) NSString *name;
@property int moonCount;
@property int alienRaceCount;
@property BOOL wantsToKillEarthlings;
@property float midiChlorianLevel;
@property int rebelBaseCount;


// Methods

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

@implementation planet

@synthesize name, moonCount, alienRaceCount, wantsToKillEarthlings, midiChlorianLevel, rebelBaseCount;

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        planet *jupiter = [[planet alloc] init];
        [jupiter set_name:@"Jupiter" and_moon_count:67];
        [jupiter setAlienRaceCount:5];
        [jupiter setWantsToKillEarthlings: YES];
        [jupiter setMidiChlorianLevel:72.731];
        [jupiter setRebelBaseCount:2];
        
        [jupiter print_info];
        
        planet *tatooine = [[planet alloc] init];
        [tatooine setName: @"Tatooine"];
        [tatooine setMoonCount:2];
        [tatooine setAlienRaceCount:28];
        [tatooine setWantsToKillEarthlings:NO];
        [tatooine setMidiChlorianLevel:12922.313];
        [tatooine setRebelBaseCount:8];
        
        [tatooine print_info];
        
        planet *tuchanka = [[planet alloc] init];
        [tuchanka setName:@"Tuchanka"];
        [tuchanka setMoonCount:2];
        [tuchanka setAlienRaceCount:4];
        [tuchanka setWantsToKillEarthlings:YES];
        [tuchanka setMidiChlorianLevel:345.12];
        [tuchanka setRebelBaseCount:12];
        
        [tuchanka print_info];
        
        planet *alderaan = [[planet alloc] init];
        [alderaan set_name:@"Alderaan" and_moon_count:16 and_alien_races:5 and_rebel_bases:1];
        [alderaan print_info];
        
        NSLog(@"Jupiter's description: %@", [alderaan description]);
        
        NSLog(@"Combined number of moons = %i", [jupiter moonCount] + [tatooine moonCount] + [tuchanka moonCount] + [alderaan moonCount]);
        
    }
    return 0;
}
