//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
  BOOL shouldCreatePizza = [_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
  Pizza *pizza = [Pizza new];
  
  if (shouldCreatePizza) {
    if ([_delegate kitchenShouldUpgradeOrder: self]) {
      [_delegate kitchen:self shouldMakePizzaOfSize:PizzaSizeLarge andToppings:toppings];
      pizza = [[Pizza alloc] initWithSize:PizzaSizeLarge andToppings:toppings];
    } else {
      pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
    }
    
    if ([self respondsToSelector:@selector(kitchenDidMakePizza:)]) {
      [_delegate kitchenDidMakePizza:pizza];
    }
  }
  return pizza;
}

@end
