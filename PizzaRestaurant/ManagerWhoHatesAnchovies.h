//
//  ManagerWhoHatesAnchovies.h
//  PizzaRestaurant
//
//  Created by Mark Wong on 2022-05-24.
//  Copyright © 2022 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manager.h"
#import "KitchenDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ManagerWhoHatesAnchovies : Manager <KitchenDelegate>

@end

NS_ASSUME_NONNULL_END
