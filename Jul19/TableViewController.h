//
//  TableViewController.h
//  Jul19
//
//  Created by Dan Ristea on 7/19/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;

@interface TableViewController : UITableViewController {
	Model *model;
	NSIndexPath *indexPath;	//indicates currently displayed tree
}

- (id) initWithStyle: (UITableViewStyle) style
			   model: (Model *) m
		   indexPath: (NSIndexPath *) p;
@end

