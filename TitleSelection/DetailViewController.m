//
//  DetailViewController.m
//  TitleSelection
//
//  Created by Skyler Clark on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
      /* Navbar Controller Colors & Adjust Back ButtonWith String Value */
    
    self.navigationController.navigationBar.tintColor = [UIColor greenColor]; // Not Seen on ViewController
    [self.navigationController.navigationBar setBarTintColor:[UIColor blackColor]]; // Seen on both VC's
    
    self.navigationController.navigationBar.topItem.backBarButtonItem = [[UIBarButtonItem alloc]
                                                                         initWithTitle:@"Movies"
                                                                         style:UIBarButtonItemStylePlain
                                                                         target:self
                                                                         action:nil];
    
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil]
     
    setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor,nil]
     
     forState:UIControlStateNormal];
    
    [[self.navigationController.navigationBar.subviews lastObject] setTintColor:[UIColor redColor]]; // Arrow ONlY Color
    
    [self.navigationController.navigationBar setTranslucent:NO]; // Need this to apply colors
    
    
    /*          Title Color & "Name"   Detail Controller   Non Action Derived Just Title & Color */
    
    [self.navigationController.navigationBar
     setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName,nil]];
    
    self.title = @"Quote";
    
    
    /* Background & Label: Holiding String Value */
    
    self.view.backgroundColor = [UIColor redColor];  // Detail Background Color
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(70, 100, 250, 100)];
    
    label.textColor = [UIColor whiteColor];
    label.text = self.titleString;
  
    
    [self.view addSubview:label]; // Add Label To DetailView
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
