//
//  Manager.h
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"

@protocol PizzaManagerDelegate <NSObject>

- (NSString *)deliverPizza: (Pizza *)pizza;

@end

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject <PizzaManagerDelegate>

@property (nonatomic, weak) id<PizzaManagerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
