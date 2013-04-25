//
//  MusicViewController.h
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MusicViewController : UIViewController
- (IBAction)play:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *playMusic;
@property (retain, nonatomic) AVAudioPlayer *audioPlayer;
@end
