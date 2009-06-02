//
//  GeneratorBase+IndexParsingAPI.m
//  appledoc
//
//  Created by Tomaz Kragelj on 28.5.09.
//  Copyright (C) 2009, Tomaz Kragelj. All rights reserved.
//

#import "GeneratorBase+GeneralParsingAPI.h"
#import "GeneratorBase+IndexParsingAPI.h"
#import "DoxygenConverter.h"

@implementation GeneratorBase (IndexParsingAPI)

//////////////////////////////////////////////////////////////////////////////////////////
#pragma mark Info items parsing support
//////////////////////////////////////////////////////////////////////////////////////////

//----------------------------------------------------------------------------------------
- (NSString*) extractIndexGroupItemRef:(id) item
{
	NSXMLNode* idAttr = [item attributeForName:@"id"];
	if (idAttr) return [idAttr stringValue];
	return nil;
}

//----------------------------------------------------------------------------------------
- (NSString*) extractIndexGroupItemName:(id) item
{
	return [item stringValue];
}

@end