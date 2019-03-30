//
//  Car.h
//  Cars_OOP
//
//  Created by Luiz on 3/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject
//Properties
@property (nonatomic, copy) NSString *model;

//Custom Initializers
- (instancetype)initWithModel: (NSString*) model;

//Methods
-(void)drive;
@end



NS_ASSUME_NONNULL_END
