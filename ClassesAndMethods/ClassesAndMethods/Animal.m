//
//  Animal.m
//  ClassesAndMethods
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "Animal.h"

@implementation Animal
@synthesize isExtinct = _isExtinct;
-(void) eat: (NSString *) food
{
    NSLog(@"yum yum, may I have seconds of the deliciuos %@", food);
}
-(void) eat: (NSString *) food withKG: (float)kg
{
    NSLog(@"yum yum, may I have seconds of %f kgs of the delicious %@", kg, food);
}
- (NSMutableArray*) produceOffSpring: (int) totalChildren
{
    NSMutableArray *bundlesOfJoy = [NSMutableArray array];
    
    for (int i = 1; i<= totalChildren ; i++) {
        Animal *baby = [[Animal alloc] init];
        baby.name = self.name;
        baby.group = self.group;
        baby.isExtinct = self.isExtinct;
        [bundlesOfJoy addObject:baby];
    }
    return bundlesOfJoy;
    
}
@end
