//
//  ManagerWhoIsCheery.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "ManagerWhoIsCheery.h"

@implementation ManagerWhoIsCheery

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(nonnull NSArray *)toppings {
  return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(nonnull Kitchen *)kitchen {
  return YES;
}

- (void)kitchenDidMakePizza: (Pizza *)pizza {
  NSLog(@"It looks delicious, keep up the good work!");
}

@end
