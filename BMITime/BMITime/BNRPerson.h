//
//  BNRPerson.h
//  BMITime
//
//  Created by Luiz on 3/26/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPerson : NSObject
{
    //BNRPesron has two variables
    @private float _heightInMeters;
    @private int _weightInKilos;
}

//BNRPerson has method to read and set its instances variables

-(float) heightInMeters;
-(void) setHeightInMeters: (float) h;
-(int) weightInKilos;
-(void) setWeightInKilos: (int) w;

//BNRPerson has a method that calculates the Body Mass Index
-(float) bodyMassIndex;


@end

NS_ASSUME_NONNULL_END
