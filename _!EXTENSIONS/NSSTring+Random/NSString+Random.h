//
//  NSString+Random.h
//  35_SearchTest
//
//  Created by Anton Novoselov on 20/11/15.
//  Copyright © 2015 Anton Novoselov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Random)

+ (NSString *)randomAlphanumericString;
+ (NSString *)randomAlphanumericStringWithLength:(NSInteger)length;

@end
