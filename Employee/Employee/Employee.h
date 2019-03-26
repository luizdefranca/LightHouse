//
//  Person.h
//  Employee
//
//  Created by Luiz on 3/22/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Employee : NSObject
{
@private NSString *firstName;
@public NSString *secondName;
}

@property (atomic) NSDate *hireDate;
@property int employeeNumber;

- (void) setFirstName: (NSString *) firstName;
- (NSString *) getFirstName;

- (void) setSecondName: (NSString *) secondName;
- (NSString *) getSecondName;

-(void) someMethod;
@end


