//
//  test1ViewController.m
//  NavTestDemo
//
//  Created by MacBook on 16/3/1.
//  Copyright © 2016年 ddshenbian. All rights reserved.
//

#import "test1ViewController.h"

@interface test1ViewController ()

@end

@implementation test1ViewController


-(void)viewWillAppear:(BOOL)animated
{
//    self.navigationController.navigationBar.hidden=YES;asdf

}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor magentaColor];
    self.navigationItem.title=@"2";
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(0, 0, 44, 44);
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:btn];
    
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(0, 64, 45, 45)];
    lable.backgroundColor=[UIColor blackColor];
    [self.view addSubview: lable];
    
    // Do any additional setup after loading the view.
}
-(void)click
{
    [self.navigationController popViewControllerAnimated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
