//
//  Person.m
//  Employee
//
//  Created by Luiz on 3/22/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Employee.h"

@implementation Employee


-(void) setFirstName: (NSString *) firstName{
    self.firstName = firstName;
};
-(NSString *) getFirstName{
  
    return firstName;
};

-(void) setSecondName: (NSString *) secondName{
    self.secondName = secondName;
};
-(NSString *) getSecondName{
  
    return secondName;
};

-(void) someMethod{
    NSLog(@"Ok, It's a method");
};
@end
