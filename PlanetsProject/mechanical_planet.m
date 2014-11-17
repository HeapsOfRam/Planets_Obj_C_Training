//
//  mechanical_planet.m
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "mechanical_planet.h"

@implementation mechanical_planet

@synthesize tractorBeamType, lightSpeedMagnifier;

-(instancetype)init_with_name:(NSString *)p_name
and_tractor_beam_type:(NSString *)tractor_beam
  and_light_speed_mag:(float)light_speed_times{
    self = [super init];
    
    [self setName: p_name];
    tractorBeamType = tractor_beam;
    lightSpeedMagnifier = light_speed_times;
    
    return self;
}

-(void)print_info{
    [super print_info];
    NSLog(@"...AND also it has a %@ tractor beam and can go %f times the speed of light", tractorBeamType, lightSpeedMagnifier);
}

@end
