//
//  ManagerWhoHatesAnchovies.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "ManagerWhoHatesAnchovies.h"

@implementation ManagerWhoHatesAnchovies

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
  for (NSString *topping in toppings) {
    if ([[topping lowercaseString] isEqualToString:@"anchovies"]) {
      return NO;
    }
  }
  return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
  return NO;
}

@end
