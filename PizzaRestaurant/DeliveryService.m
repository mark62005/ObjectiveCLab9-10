//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init {
  self = [super init];
  if (self) {
    _pizzaRecord = [NSMutableArray new];
  }
  return self;
}

- (NSString *)deliverPizza: (Pizza *)pizza {
  NSString *pizzaDescription = [pizza description];
  [_pizzaRecord addObject:pizzaDescription];
  [_delegate deliverPizza:pizza];
  
  return pizzaDescription;
}

- (NSMutableArray *)returnPizzaRecord {
  return self.pizzaRecord;
}

@end
