//
//  EditViewController.m
//  Array
//
//  Created by Hammad  on 9/25/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController
@synthesize delegate, textField,index;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title =@"Edit Row"; // cant edit titile
    
    textField.text = self.string;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)endEditingWithButton:(id)sender
{
    [delegate editViewController:self didEdit:textField.text index:index];
 
    [self.navigationController popViewControllerAnimated:YES];
}
@end
