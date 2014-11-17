//
//  mechanical_planet.h
//  PlanetsProject
//
//  Created by Ryan March on 11/17/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "planet.h"

@interface mechanical_planet : planet

@property (nonatomic, strong) NSString *tractorBeamType;
@property float lightSpeedMagnifier;

-(instancetype)init_with_name:(NSString *) p_name
and_tractor_beam_type:(NSString *) tractor_beam
  and_light_speed_mag:(float) light_speed_times;
-(void)print_info;

@end
