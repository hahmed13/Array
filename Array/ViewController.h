//
//  ViewController.h
//  Array
//
//  Created by Hammad  on 9/24/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"

@interface ViewController : UIViewController <UIWebViewDelegate, UITableViewDataSource, EditViewControllerDelegate >

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic )NSMutableArray *array;


- (IBAction)showTextButtonPresed:(id)sender;


@end
