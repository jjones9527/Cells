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



@end
