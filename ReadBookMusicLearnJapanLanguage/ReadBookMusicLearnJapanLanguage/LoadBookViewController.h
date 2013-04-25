//
//  LoadBookViewController.h
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFKPageFlipper.h"

@interface LoadBookViewController : UIViewController <AFKPageFlipperDataSource>{
	
    CGPDFDocumentRef pdfDocument;
	
	AFKPageFlipper *flipper;
}

@property (assign, nonatomic) NSString *nameEbook;

@end
