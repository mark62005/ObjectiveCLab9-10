//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-19.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings
{
  self = [super init];
  if (self) {
    _size = size;
    _toppings = toppings;
  }
  return self;
}

@end
