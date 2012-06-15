//
//  ViewController.h
//  GestionVues
//
//  Created by Marian PAUL on 21/03/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Vue1;
@class Vue2;

@interface ViewController : UIViewController
{
    Vue1 *_vue1;
    Vue2 *_vue2;
}
- (void) changePourLaVue2;
- (void) changePourLaVue1;
@end
