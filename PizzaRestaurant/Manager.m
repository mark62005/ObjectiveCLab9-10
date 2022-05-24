//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen: (Kitchen *)kitchen shouldMakePizzaOfSize: (PizzaSize)size andToppings: (NSArray *)toppings {
  return YES;
}

- (void)kitchenDidMakePizza: (Pizza *)pizza {
  [_delegate deliverPizza:pizza];
}

- (BOOL)kitchenShouldUpgradeOrder: (Kitchen *)kitchen {
  return NO;
}

- (NSString *)deliverPizza: (Pizza *)pizza {
  NSString *pizzaDescription = [pizza description];
  return pizzaDescription;
}

@end
