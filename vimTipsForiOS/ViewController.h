//
//  ViewController.h
//  vimTipsForiOS
//
//  Created by Xing Lin on 14-2-19.
//  Copyright (c) 2014年 Xing Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *contentView;

@property (weak, nonatomic) IBOutlet UILabel *commentView;

- (IBAction)Refresh:(id)sender;

@end
