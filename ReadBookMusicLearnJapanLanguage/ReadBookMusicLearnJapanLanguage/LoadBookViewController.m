//
//  LoadBookViewController.m
//  ReadBookMusicLearnJapanLanguage
//
//  Created by MAC on 4/25/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "LoadBookViewController.h"
#import "PDFRendererView.h"

@interface LoadBookViewController ()

@end

@implementation LoadBookViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    NSLog(@"%@", self.nameEbook);
}

- (NSInteger) numberOfPagesForPageFlipper:(AFKPageFlipper *)pageFlipper {
	return self.view.bounds.size.width > self.view.bounds.size.height ? ceil((float) CGPDFDocumentGetNumberOfPages(pdfDocument) / 2) : CGPDFDocumentGetNumberOfPages(pdfDocument);
}

- (UIView *) viewForPage:(NSInteger) page inFlipper:(AFKPageFlipper *) pageFlipper {
	PDFRendererView *result = [[PDFRendererView alloc] initWithFrame:pageFlipper.bounds];
	result.pdfDocument = pdfDocument;
	result.pageNumber = page;
	
	return result;
}



- (void) loadView {
	[super loadView];
    
    pdfDocument = CGPDFDocumentCreateWithURL(( CFURLRef) [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:self.nameEbook ofType:@"pdf"]]);
    
	self.view.autoresizesSubviews = YES;
	self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	
	flipper = [[AFKPageFlipper alloc] initWithFrame:self.view.bounds];
	flipper.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
	flipper.dataSource = self;

	[self.view addSubview:flipper];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [super dealloc];
}
@end
