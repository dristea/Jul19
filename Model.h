//
//  Model.h
//  Jul19
//
//  Created by Dan Ristea on 7/19/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Model : NSObject{
	NSArray *tree;
}

//Each item in the Model is identified by an NSIndexPath.
//These methoods take an NSIndexPath and return informatioon about that item.

- (NSString *) name: (NSIndexPath *) indexPath;
- (NSUInteger) numberOfRows: (NSIndexPath *) indexPath;
- (NSString *) text: (NSIndexPath *) indexPath row: (NSUInteger) row;

@end
