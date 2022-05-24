//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryService.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject <DeliveryServiceDelegate>

- (NSString *)deliverPizza: (Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
