//
//  UITableViewController+JDFToolkit.h
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 20/05/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewController (JDFToolkit)

- (NSIndexPath *)indexPathForCellSubview:(UIView *)subview;
- (UITableViewCell *)tableViewCellForCellSubview:(UIView *)subview;

- (void)tabToNextTextFieldInTableViewFromTextField:(UITextField *)textField;
- (NSIndexPath *)nextIndexPathAfterIndexPath:(NSIndexPath *)indexPath loopBackToStart:(BOOL)loopBackToStart;

@end
