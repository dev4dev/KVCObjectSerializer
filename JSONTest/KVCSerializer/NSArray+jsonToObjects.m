//
//  NSArray+jsonToObjects.m
//  LoveItApp
//
//  Created by Alex Antonyuk on 7/6/12.
//  Copyright (c) 2012 Home. All rights reserved.
//

#import "NSArray+jsonToObjects.h"
#import "KVCBaseObject.h"

@implementation NSArray (jsonToObjects)

- (NSArray*)
jsonToObjectsWithClass:(Class)className
{
	NSMutableArray* objectsArray = [NSMutableArray arrayWithCapacity:self.count];
	[self enumerateObjectsUsingBlock:^(NSDictionary* json, NSUInteger idx, BOOL *stop) {
		id obj;
		if ([className isSubclassOfClass:[KVCBaseObject class]]) {
			obj = [className objectForDictionary:json];
		} else {
			obj = json;
		}
		[objectsArray addObject:obj];
	}];
	
	return objectsArray;
}

@end
