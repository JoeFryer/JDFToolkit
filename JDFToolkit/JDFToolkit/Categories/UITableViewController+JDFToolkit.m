//
//  UITableViewController+JDFToolkit.m
//  ZimmerSalesApp
//
//  Created by Joe Fryer on 20/05/2014.
//  Copyright (c) 2014 Zimmer. All rights reserved.
//

#import "UITableViewController+JDFToolkit.h"

// Toolkit
#import "JDFToolkitCategories.h"


@implementation UITableViewController (JDFToolkit)

- (NSIndexPath *)indexPathForCellSubview:(UIView *)subview
{
    if (subview) {
        UITableViewCell *cell = [self tableViewCellForCellSubview:subview];
        return [self.tableView indexPathForCell:cell];
    }
    return nil;
}

- (UITableViewCell *)tableViewCellForCellSubview:(UIView *)subview
{
    if (subview) {
        UIView *superView = subview.superview;
        while (true) {
            if (superView) {
                if ([superView isKindOfClass:[UITableViewCell class]]) {
                    return (UITableViewCell *)superView;
                }
                superView = [superView superview];
            } else {
                return nil;
            }
        }
    } else {
        return nil;
    }
}

- (void)tabToNextTextFieldInTableViewFromTextField:(UITextField *)textField
{
    NSIndexPath *indexPath = [self indexPathForCellSubview:textField];
    if (indexPath) {
        NSIndexPath *nextIndexPath = [self nextIndexPathAfterIndexPath:indexPath loopBackToStart:NO];
        if (!nextIndexPath) {
            return;
        }
        BOOL stillSearching = YES;
        BOOL haveBeenToBeginning = NO;
        while (stillSearching) {
            if (nextIndexPath.section == 0 && nextIndexPath.row == 0) {
                if (haveBeenToBeginning) {
                    return;
                }
                haveBeenToBeginning = YES;
            }
            
            CGRect cellRect = [self.tableView rectForRowAtIndexPath:nextIndexPath];
            NSArray *tableSubviews = [self.tableView recursiveSubviewsJDF];
            
            for (UIView *view in tableSubviews) {
                if ([view isKindOfClass:[UITextField class]]) {
                    if (CGRectIntersectsRect(cellRect, [view convertRect:view.frame toView:self.tableView])) {
                        [view becomeFirstResponder];
                        stillSearching = NO;
                        break;
                    }
                }
            }
            nextIndexPath = [self nextIndexPathAfterIndexPath:nextIndexPath loopBackToStart:NO];
        }
    }
}

- (NSIndexPath *)nextIndexPathAfterIndexPath:(NSIndexPath *)indexPath loopBackToStart:(BOOL)loopBackToStart
{
    if (indexPath.row < [self.tableView numberOfRowsInSection:indexPath.section] - 1) {
        return [NSIndexPath indexPathForRow:indexPath.row + 1 inSection:indexPath.section];
    } else if (indexPath.section < [self.tableView numberOfSections] - 1) {
        return [NSIndexPath indexPathForRow:0 inSection:indexPath.section + 1];
    } else if (loopBackToStart) {
        return [NSIndexPath indexPathForRow:0 inSection:0];
    } else {
        return nil;
    }
}

@end
