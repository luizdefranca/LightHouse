//
//  Animal.h
//  ClassesAndMethods
//
//  Created by Luiz on 3/28/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
enum Group{
    Mammal = 0,
    Bird,
    Reptile,
    Amphibian,
    BonyFish,
    CartFish
};


@interface Animal : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) enum Group group;
@property (nonatomic) BOOL isExtinct;

-(void) eat: (NSString *) food;
-(void) eat: (NSString *) food withKG: (float)kg;
- (NSMutableArray*) produceOffSpring: (int) totalChildren;
@end

NS_ASSUME_NONNULL_END
