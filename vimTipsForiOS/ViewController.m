//
//  ViewController.m
//  vimTipsForiOS
//
//  Created by Xing Lin on 14-2-19.
//  Copyright (c) 2014年 Xing Lin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize commentView,contentView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Refresh:(id)sender {
    NSError *error;

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://vim-tips.com/random_tips.json"]];

    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];

    NSDictionary *vimtips = [NSJSONSerialization JSONObjectWithData:response options:NSJSONReadingMutableLeaves error:&error];
    
    contentView.text = [NSString stringWithFormat:@"%@",[vimtips objectForKey:@"content"]];
    commentView.text = [NSString stringWithFormat:@"%@",[vimtips objectForKey:@"comment"]];
}
@end
