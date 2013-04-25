//
//  MainViewController.m
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "MainViewController.h"

int indexImage;

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        indexImage = 1;
        
        
    }
    return self;
}

-(void) flipImageLeft : (UISwipeGestureRecognizer *) gusture {
    
    if (indexImage <= 63) {
        
        if (indexImage < 63) {
            indexImage = indexImage + 1;
        }

        
        
        [UIView transitionWithView:self.imageView duration:1 options:   UIViewAnimationOptionTransitionCurlUp animations:^{
        
            UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexImage]]];
            [self.imageView addSubview:image];
        
        } completion:^(BOOL finished){
            if (indexImage%2!=0) {
                [self.label1 setText: [NSString stringWithFormat:@"%d", indexImage - 2]];
            }else{
                [self.label1 setText:@""];
            }
            [self.imageView addSubview:self.label1];
            
            if (indexImage%2==0) {
                [self.label2 setText: [NSString stringWithFormat:@"%d", indexImage - 2]];
            }else{
                [self.label2 setText:@""];
            }
            [self.imageView addSubview:self.label2];
        }];
    }
    
}

-(void) flipImageRight : (UISwipeGestureRecognizer *) gusture {
    
    if (indexImage > 2) {
        
        if (indexImage > 2) {
            indexImage = indexImage - 1;
            
        }
    
        [UIView transitionWithView:self.imageView duration:1 options:UIViewAnimationOptionTransitionCurlDown animations:^{
        
            UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexImage]]];
            [self.imageView addSubview:image];
        
        } completion:^(BOOL finished){
        
            if (indexImage%2!=0) {
                [self.label1 setText: [NSString stringWithFormat:@"%d", indexImage - 2]];
            }else{
                [self.label1 setText:@""];
            }
            [self.imageView addSubview:self.label1];
            
            if (indexImage%2==0) {
                [self.label2 setText: [NSString stringWithFormat:@"%d", indexImage - 2]];
            }else{
                [self.label2 setText:@""];
            }
            [self.imageView addSubview:self.label2];
        
        }];
    
    }
}

-(void) loadView {
    [super loadView];
    UISwipeGestureRecognizer *swipe1 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(flipImageLeft:)];
    self.imageView.userInteractionEnabled = YES;
    [swipe1 setDirection: UISwipeGestureRecognizerDirectionLeft];
    [self.imageView addGestureRecognizer:swipe1];
    
    UISwipeGestureRecognizer *swipe2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(flipImageRight:)];
    self.imageView.userInteractionEnabled = YES;
    [swipe2 setDirection: UISwipeGestureRecognizerDirectionRight];
    [self.imageView addGestureRecognizer:swipe2];
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

- (void)dealloc {
    [_imageView release];
    [_label1 release];
    [_label2 release];
    [super dealloc];
}
@end
