//
//  ReadBookViewController.m
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ReadBookViewController.h"

@interface ReadBookViewController ()

@end

@implementation ReadBookViewController

@synthesize loadBook;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Ebook";
        
        UIBarButtonItem *back = [[UIBarButtonItem alloc] init];
        self.navigationItem.backBarButtonItem = back;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)readBook:(id)sender {
    
    if (!loadBook) {
        loadBook = [[LoadBookViewController alloc] initWithNibName:@"LoadBookViewController" bundle:nil];
    }
    
    UIButton *button = (UIButton *) sender;
    
    if (button.tag == 0) {
        loadBook.nameEbook = @"cookbook";
    }
    
    [self.navigationController pushViewController:loadBook animated:YES];
    
}
@end
