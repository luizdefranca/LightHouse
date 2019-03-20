//
//  Employee.h
//  CustomClassExample
//
//  Created by Luiz on 3/18/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;

-(void) someMethod;
@end

NS_ASSUME_NONNULL_END
