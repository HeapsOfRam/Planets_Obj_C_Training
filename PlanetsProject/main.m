//
//  main.m
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "planet.h"
#import "mechanical_planet.h"
#import "atlantian_warrior.h"

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
        
        planet *naboo = [[planet alloc] init_with_name:@"Naboo" and_moon_count:80 and_rebel_bases:56];
        [naboo print_info];
        
        NSLog(@"Alderaan description: %@", [alderaan description]);
        
        NSLog(@"Combined number of moons = %i", [jupiter moonCount] + [tatooine moonCount] + [tuchanka moonCount] + [alderaan moonCount]);
        
        mechanical_planet *death_star = [[mechanical_planet alloc] init_with_name:@"Death Star" and_tractor_beam_type:@"Empire" and_light_speed_mag:4.333];
        [death_star setWantsToKillEarthlings:YES];
        [death_star print_info];
        
        atlantian_warrior *aquaman = [[atlantian_warrior alloc] init_with_name:@"Aquaman" and_weapon_wielded:@"Fish" and_royal_guard:YES and_battles_won:1021];
        
        NSLog(@"%@", [aquaman retrieve_data]);
        
    }
    return 0;
}
