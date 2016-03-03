//
//  ViewController.m
//  NavTestDemo
//
//  Created by MacBook on 16/3/1.
//  Copyright © 2016年 ddshenbian. All rights reserved.
//

#import "ViewController.h"
#import "test1ViewController.h"
@interface ViewController ()

@end

@implementation ViewController


//-(void)viewWillAppear:(BOOL)animated
//{
//    self.navigationController.navigationBar.hidden=YES;
//    
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    self.navigationItem.title=@"???";
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(0, 0, 44, 44);
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:btn];
    
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event

{
[self.navigationController pushViewController:[[test1ViewController alloc]init] animated:NO];

}
-(void)click
{
    [self.navigationController pushViewController:[[test1ViewController alloc]init] animated:NO];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
