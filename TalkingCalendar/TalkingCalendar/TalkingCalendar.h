//
//  TalkingCalendar.h
//  TalkingCalendar
//
//  Created by Luiz on 3/31/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TalkingCalendar : NSObject

//Properties
@property (nonatomic) NSString* date;

//Custom Initializers
- (instancetype)initWithDate:(NSString *)date;

//Methods
- (NSString *)parse;

@end

NS_ASSUME_NONNULL_END
