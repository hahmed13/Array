//
//  ViewController.m
//  Array
//
//  Created by Hammad  on 9/24/13.
//  Copyright (c) 2013 Hammad Ahmed. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.array = [[NSMutableArray alloc] init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    UITableViewCell *cell =[tableView
                            dequeueReusableCellWithIdentifier:@"abc"];
    
    
    
    if (!cell) {
        cell= [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"abc"];
                                       cell.textLabel.textColor = [ UIColor redColor];
                                       
    }
    
    
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"abc"];
    cell.textLabel.text = self.array[indexPath.row];
    
    return  cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    EditViewController *editViewController = [[EditViewController alloc] init];
    
    editViewController.index = indexPath.row;
    editViewController.string = self.array[indexPath.row];
    editViewController.delegate = self;
    
    [self.navigationController pushViewController:editViewController animated:YES];
    
}


-(void) editViewController: (id) evc didEdit:(NSString *) text index:(int) index
{
    self.array[index] = text;
    [self.tableView reloadData];
}





- (IBAction)showTextButtonPresed:(id)sender
{
    
    
    [self.array addObject:self.textField.text];
    [_tableView reloadData];
    
    
    
    NSLog(@"%@", self.array);



}

@end
