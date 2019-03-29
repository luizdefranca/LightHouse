//
//  BNRPerson.m
//  BMITime
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

//Getter and Setters
-(float) heightInMeters
{
    return _heightInMeters;
};
-(void) setHeightInMeters: (float) h
{
    _heightInMeters = h;
};
-(int) weightInKilos
{
    return _weightInKilos;
};
-(void) setWeightInKilos: (int) w
{
    _weightInKilos = w;
};

//eyeColor - Getter and Setter
-(NSString*) eyeColor{
    return _eyeColor;
};
-(void) setEyeColor: (NSString*) eyeColor{
    _eyeColor = eyeColor;
};


//Methods
-(float) bodyMassIndex
{
//    return _weightInKilos/_heightInMeters * _heightInMeters;
    float h = [self heightInMeters];
    return [self weightInKilos]/ h * h;
};
@end
