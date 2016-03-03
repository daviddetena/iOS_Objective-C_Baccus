//
//  DTCWineViewController.m
//  Baccus
//
//  Created by David de Tena on 03/03/16.
//  Copyright © 2016 David de Tena. All rights reserved.
//

#import "DTCWineViewController.h"
#import "DTCWebViewController.h"

@interface DTCWineViewController ()

@end

@implementation DTCWineViewController

- (id) initWithModel:(DTCWineModel *) aModel{
    if(self = [super initWithNibName:nil
                              bundle:nil]){
        _model = aModel;
        self.title = aModel.name;
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Use this method to sync model and view
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self syncModelWithView];
}


- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}


#pragma mark - Actions
- (IBAction)displayWeb:(id)sender{
    
    // Create WebVC and push
    DTCWebViewController *webVC = [[DTCWebViewController alloc] initWithModel:self.model];
    [self.navigationController pushViewController:webVC animated:YES];
}


#pragma mark - Utils

// Views display model properties
- (void) syncModelWithView{
    self.nameLabel.text = self.model.name;
    self.typeLabel.text = self.model.type;
    self.originLabel.text = self.model.origin;
    self.notesLabel.text = self.model.notes;
    self.wineryNameLabel.text = self.model.wineCompanyName;
    self.photoView.image = self.model.photo;
    
    self.grapesLabel.text = [self arrayToString: self.model.grapes];
    [self displayRating: self.model.rating];
    self.notesLabel.numberOfLines = 0;
}

- (NSString *) arrayToString: (NSArray *) anArray{
    
    NSString *textToDisplay = nil;
    
    if ([anArray count] == 1) {
        textToDisplay = [@"100% " stringByAppendingString:[anArray lastObject]];
    }
    else{
        textToDisplay = [[anArray componentsJoinedByString:@", "] stringByAppendingString:@"."];
    }
    return textToDisplay;
}

// Display rating: We first clear array of images for rating, and draw as much images as rating the wine has got
- (void) displayRating: (int) aRating{
    [self clearRating];
    
    UIImage *glass = [UIImage imageNamed:@"splitView_score_glass"];
    for (int i=0; i< aRating; i++) {
        [[self.ratingView objectAtIndex:i] setImage:glass];
    }
}

- (void) clearRating{
    for (UIImageView *imgView in self.ratingView) {
        imgView.image = nil;
    }
}


@end
