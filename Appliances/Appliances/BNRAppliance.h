//
//  BNRAppliance.h
//  Appliances
//
//  Created by Luiz on 3/29/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAppliance : NSObject

//properties
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;


//Custom initializers
//designated initializer
-(instancetype)initWithProductName: (NSString*) pn;

//methods
-(NSString *) description;
@end

NS_ASSUME_NONNULL_END
