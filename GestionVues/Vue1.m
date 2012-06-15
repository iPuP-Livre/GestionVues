//
//  Vue1.m
//  GestionVues
//
//  Created by Marian PAUL on 21/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "Vue1.h"
#import "AppDelegate.h"
#import "ViewController.h"

@implementation Vue1

- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame]) 
    {
        self.backgroundColor = [UIColor blueColor];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setFrame:CGRectMake(0, 0, 160, 30)];
        [button setCenter:self.center];
        [button addTarget:self action:@selector(allerALaVue2:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"Aller à la vue 2" forState:UIControlStateNormal];
        [self addSubview:button];
        
        UILabel *labelStatut = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 260, 30)];
        labelStatut.text = @"On est sur la vue 1";
        [labelStatut setBackgroundColor:[UIColor clearColor]];
        labelStatut.textColor = [UIColor whiteColor];
        [self addSubview:labelStatut];    
    }
    return self;
}

- (void) allerALaVue2:(id)sender 
{
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate]; // [1]
    [appDelegate.viewController changePourLaVue2]; //[2]
}

@end
