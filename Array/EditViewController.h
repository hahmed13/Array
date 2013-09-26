//
//  EditViewController.h
//  Array
//
//  Created by Hammad  on 9/25/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"

@protocol EditViewControllerDelegate

-(void) editViewController: (id) evc didEdit:(NSString *) text index:(int) index;



@end


@interface EditViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (weak, nonatomic) id <EditViewControllerDelegate> delegate;
@property (strong,nonatomic) NSString *string; 
@property int index;



- (IBAction)endEditingWithButton:(id)sender;
@end
