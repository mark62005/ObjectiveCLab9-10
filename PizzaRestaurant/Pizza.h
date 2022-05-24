//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-19.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize) {
  PizzaSizeSmall,
  PizzaSizeMedium,
  PizzaSizeLarge
};

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

@property (nonatomic, readonly) PizzaSize size;
@property (nonatomic, readonly) NSArray *toppings;

- (instancetype)initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings;

@end

NS_ASSUME_NONNULL_END
