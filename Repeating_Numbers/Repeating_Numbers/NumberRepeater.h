//
//  NumberRepeater.h
//  Repeating_Numbers
//
//  Created by Luiz on 3/30/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NumberRepeater : NSObject
//Properties
@property (nonatomic, copy) NSArray *array;

//Custom Initializers
- (instancetype)initWithNumbers:(NSArray *)array;

//Methods
- (NSString *)process;
@end

NS_ASSUME_NONNULL_END
