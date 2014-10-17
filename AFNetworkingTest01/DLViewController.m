//
//  DLViewController.m
//  AFNetworkingTest01
//
//  Created by bankscene_yang on 14-10-17.
//  Copyright (c) 2014年 YNRCC. All rights reserved.
//

#import "DLViewController.h"
#import "AFHTTPRequestOperationManager.h"
@interface DLViewController ()

@property (nonatomic,strong) AFHTTPRequestOperationManager * AFMgr;
@property (nonatomic,strong) AFHTTPResponseSerializer * responseSerzier;
@end

@implementation DLViewController
- (IBAction)toGET:(id)sender {
    //AFNetworking 发送GET请求
    [self.AFMgr GET:@"http://yl.cms.palmtrends.com/api_v2.php?action=lastest_list&sa=new&offset=0&count=15&uid=8507468&platform=a&mobile=LT22i&pid=10048&e=94692847a934e49327c8cd50b7f9731e" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}
- (IBAction)toDownload:(id)sender {
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.AFMgr=[AFHTTPRequestOperationManager manager];
    self.responseSerzier=[[AFHTTPResponseSerializer alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
