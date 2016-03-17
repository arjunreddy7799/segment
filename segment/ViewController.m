//
//  ViewController.m
//  segment
//
//  Created by saikrishna on 21/01/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *values=[[NSArray alloc]initWithObjects:@"daily",@"weakly",@"yearly", nil];
    UISegmentedControl *segmentcontroller=[[UISegmentedControl alloc]initWithItems:values];
    segmentcontroller.frame=CGRectMake(20, 20, 200, 50);
    [self.view addSubview:segmentcontroller];
    [segmentcontroller addTarget:self action:@selector(segmentvaluechanged:) forControlEvents:UIControlEventValueChanged ];
    
    UIScrollView *scroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 20, 200, 250)];
    scroll.contentSize=CGSizeMake(500, 900);
    [self.view addSubview:scroll];
    [scroll addSubview:segmentcontroller];

    
}
-(void)segmentvaluechanged:(UISegmentedControl *)segment{
    NSInteger *segmentvalue=segment.selectedSegmentIndex;
    if(segmentvalue==0){
        NSLog(@"1");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
