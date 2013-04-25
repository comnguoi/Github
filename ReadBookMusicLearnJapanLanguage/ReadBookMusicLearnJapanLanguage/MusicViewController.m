//
//  MusicViewController.m
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "MusicViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface MusicViewController () {
BOOL flagPlay;
    NSString *fileName;
}
@end

@implementation MusicViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    flagPlay = TRUE;
//    [self loadMusic];
}

-(void) loadMusic {
    NSString* filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"mp3"];
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSError *error;
    
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error: &error];
    
    //Truyền địa chỉ của con trỏ chứ không truyền địa chỉ vùng nhớ heap. Nếu có lỗi, con trỏ error mới được khởi tạo
    
    
    
    if (error) {
        
        NSLog(@"Error %@", error.description);
        
        return;
        
        
        
    }
    
    [self.audioPlayer prepareToPlay];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_playMusic release];
    [super dealloc];
}
- (IBAction)play:(id)sender {
    
    if (flagPlay) {
        self.playMusic = (UIButton *) sender;
        switch (self.playMusic.tag) {
            case 0:
                fileName = @"Home";
                break;
            case 1:
                fileName = @"YouRaiseMeUp";
                break;
            case 2:
                fileName = @"Soledad";
                break;
                
            default:
                break;
        }
    }
    
    
    
    
    if (flagPlay) {
        [self loadMusic];
        
        [self.audioPlayer play];
        [self.playMusic setTitle:@"Stop" forState:UIControlStateNormal];
    
        flagPlay = FALSE;
    }else{
        
        [self.audioPlayer stop];
        [self.playMusic setTitle:@"Play" forState:UIControlStateNormal];
        
        flagPlay = TRUE;
    }
}
@end
