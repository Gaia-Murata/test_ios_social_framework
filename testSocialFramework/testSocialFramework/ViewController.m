//
//  ViewController.m
//  testSocialFramework
//
//  Created by 村田 宗一朗 on 2012/11/01.
//  Copyright (c) 2012年 Gaia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)Button:(UIButton *)sender {

    //facebook Composer View
	SLComposeViewController *facebookPostVC = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    //textAdd
    [facebookPostVC setInitialText:@"facebook post"];
    //Image
    [facebookPostVC addImage:[UIImage imageNamed:@"image"]];
    //view
    [self presentViewController:facebookPostVC animated:YES completion:nil];
}

- (IBAction)All:(UIButton *)sender {
    //Massage
	NSString *textToShare = @"test post";
	//image
	UIImage *imageToShare = [UIImage imageNamed:@""];
	//url
	NSURL *url = [NSURL URLWithString:@""];
	//Array
	NSArray *activityItems = [[NSArray alloc]  initWithObjects:textToShare, imageToShare,url,nil];
    
	//Init
	UIActivity *activity = [[UIActivity alloc] init];
	NSArray *applicationActivities = [[NSArray alloc] initWithObjects:activity, nil];
	
	//
	UIActivityViewController *activityVC =
	[[UIActivityViewController alloc] initWithActivityItems:activityItems
                                      applicationActivities:applicationActivities];
	//
	[self presentViewController:activityVC animated:YES completion:nil];
}
@end
