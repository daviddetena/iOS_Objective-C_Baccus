//
//  DTCWineViewController.h
//  Baccus
//
//  Created by David de Tena on 03/03/16.
//  Copyright © 2016 David de Tena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTCWineModel.h"

@interface DTCWineViewController : UIViewController

#pragma mark - Properties

// Views
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *wineryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *grapesLabel;
@property (weak, nonatomic) IBOutlet UILabel *notesLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *ratingView;


// Model
@property (strong, nonatomic) DTCWineModel *model;


#pragma mark - Init

- (id) initWithModel:(DTCWineModel *) aModel;


#pragma mark - Actions
- (IBAction)displayWeb:(id)sender;


@end
