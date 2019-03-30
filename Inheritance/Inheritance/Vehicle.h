//
//  Vehicle.h
//  Inheritance
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject
@property (nonatomic) double currentSpeed;
-(void) makeNoise;
@end

NS_ASSUME_NONNULL_END
