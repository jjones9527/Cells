//
//  ViewController.m
//  Cells
//
//  Created by Jeremy Jones on 12/1/2013.
//  Copyright (c) 2013 Jeremy Jones. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize computers;
@synthesize tvCell;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook", @"Name", @"White", @"Color", nil];
    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook Pro", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"iMac", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mac Mini", @"Name", @"Silver", @"Color", nil];
    NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mac Pro", @"Name", @"Silver", @"Color", nil];
    
    NSArray *array = [[NSArray alloc] initWithObjects:row1, row2, row3, row4, row5, nil];
    self.computers = array;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellTableIdentifier = @"CellTableIdentifier ";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellTableIdentifier] /*autorelease*/;
        CGRect nameLabelRect = CGRectMake(0, 5, 70, 15);
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:nameLabelRect];
        nameLabel.textAlignment = NSTextAlignmentRight;
        nameLabel.text = @"Name:";
        nameLabel.font = [UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:nameLabel];
        // [nameLabel release];
        
        CGRect colorLabelRect = CGRectMake(0, 26, 70, 15);
        UILabel *colorLabel = [[UILabel alloc] initWithFrame:colorLabelRect];
        colorLabel.textAlignment = NSTextAlignmentRight;
        colorLabel.text = @"Color:";
        colorLabel.font = [UIFont boldSystemFontOfSize:12];
        [cell.contentView addSubview:colorLabel];
        // [colorLabel release];
        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
        UILabel *nameValue =[[UILabel alloc] initWithFrame:nameValueRect];
        nameValue.tag = kNameValueTag;
        [cell.contentView addSubview:nameValue];
        // [nameValue release];
        
        CGRect colorValueRect = CGRectMake(80, 25, 200, 15);
        UILabel *colorValue = [[UILabel alloc] initWithFrame:colorValueRect];
        colorValue.tag = kColorValueTag;
        [cell.contentView addSubview:colorValue];
        //[colorValue release];
    }
    
    NSInteger row = [indexPath row];
    NSDictionary *rowData = [self.computers objectAtIndex:row];
    UILabel *name = (UILabel *)[cell.contentView viewWithTag:kNameValueTag];
    name.text = [rowData objectForKey:@"Name"];
    
    UILabel *color = (UILabel *)[cell.contentView viewWithTag:kColorValueTag];
    color.text = [rowData objectForKey:@"Color"];
    return cell;
}

@end
