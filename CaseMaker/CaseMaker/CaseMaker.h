//
//  CaseMaker.h
//  CaseMaker
//
//  Created by Luiz on 4/1/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaseMaker : NSObject
//Properties
@property NSString* string;

//Custom Initializers
- (instancetype)initWithString:(NSString *)string;

//Methods
- (NSString *)process;

@end

NS_ASSUME_NONNULL_END
