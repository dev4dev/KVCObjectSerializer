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
	for (NSDictionary* json in self) {
		id obj;
		if ([className isSubclassOfClass:[KVCBaseObject class]]) {
			obj = [className objectForDictionary:json];
		} else {
			obj = json;
		}
		if (obj) {
			[objectsArray addObject:obj];
		}
	}
	
	return objectsArray;
}

@end
