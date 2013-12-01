//
//  ViewController.h
//  Cells
//
//  Created by Jeremy Jones on 12/1/2013.
//  Copyright (c) 2013 Jeremy Jones. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNameValueTag 1
#define kColorValueTag 2

@interface ViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
    NSArray *computers;
}

@property (nonatomic, retain) NSArray *computers;

@end
