//
//  ReadBookViewController.h
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoadBookViewController.h"

@interface ReadBookViewController : UIViewController

@property (assign, nonatomic) LoadBookViewController *loadBook;

- (IBAction)readBook:(id)sender;

@end
