//
//  BNREmployee.m
//  BMITime
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee 

-(double)yearsOfEmployment
{
    //Do i have a non-nil hireDate?
    if(self.hireDate){
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:_hireDate];
        return  secs/ 31557600.0; //Second per year
    } else {
        return 0;
    }
};

-(float)bodyMassIndex{
//    return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
};

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", _employeeID];
}
@end
