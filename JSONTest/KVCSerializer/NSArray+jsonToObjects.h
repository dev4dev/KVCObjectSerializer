//
//  NSArray+jsonToObjects.h
//  LoveItApp
//
//  Created by Alex Antonyuk on 7/6/12.
//  Copyright (c) 2012 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (jsonToObjects)

- (NSArray*)jsonToObjectsWithClass:(Class)className;

@end
