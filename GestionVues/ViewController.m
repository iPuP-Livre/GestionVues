//
//  ViewController.m
//  GestionVues
//
//  Created by Marian PAUL on 21/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "ViewController.h"
#import "Vue1.h"
#import "Vue2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _vue1 = [[Vue1 alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_vue1];
}

- (void) changePourLaVue1 
{
    [_vue2 removeFromSuperview]; // [1]
    [self.view addSubview:_vue1]; // [2]
}
- (void) changePourLaVue2 
{
    if(!_vue2)
        _vue2 = [[Vue2 alloc] initWithFrame:self.view.bounds]; // [3]
    [_vue1 removeFromSuperview];
    [self.view addSubview:_vue2];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
