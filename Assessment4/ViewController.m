//
//  ViewController.m
//  Assessment4
//
//  Created by Vik Denic on 8/11/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property UIAlertView *addAlert;
@property UIAlertView *colorAlert;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Dog Owners";
}

#pragma mark - UITableView Delegate Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //TODO: UPDATE THIS ACCORDINGLY
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    //TODO: UPDATE THIS ACCORDINGLY
    return cell;
}

#pragma mark - UIAlertView Methods

//METHOD FOR PRESENTING ALERT VIEW WITH TEXT FIELD FOR USER TO ENTER NEW PERSON
- (IBAction)onAddButtonTapped:(UIBarButtonItem *)sender
{
    self.addAlert = [[UIAlertView alloc] initWithTitle:@"Add a Person"
                                                    message:nil
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Add", nil];
    self.addAlert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField *alertTextField = [self.addAlert textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeDefault;

    self.addAlert.tag = 0;
    [self.addAlert show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != alertView.cancelButtonIndex && alertView.tag == 0)
    {
        //TODO: ADD YOUR CODE HERE FOR WHEN USER ADDS NEW PERSON
    }

    //TODO: SAVE USER'S DEFAULT COLOR PREFERENCE USING THE CONDITIONAL BELOW
    else if (alertView.tag == 1)
    {
        if (buttonIndex == 0)
        {
            self.navigationController.navigationBar.tintColor = [UIColor purpleColor];
        }
        else if (buttonIndex == 1)
        {
            self.navigationController.navigationBar.tintColor = [UIColor blueColor];
        }
        else if (buttonIndex == 2)
        {
            self.navigationController.navigationBar.tintColor = [UIColor orangeColor];
        }
        else if (buttonIndex == 3)
        {
            self.navigationController.navigationBar.tintColor = [UIColor greenColor];
        }
    }
}

//METHOD FOR PRESENTING USER'S COLOR PREFERENCE
- (IBAction)onColorButtonTapped:(UIBarButtonItem *)sender
{
    self.colorAlert = [[UIAlertView alloc] initWithTitle:@"Choose a default color!"
                                                    message:nil
                                                   delegate:self
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Purple", @"Blue", @"Orange", @"Green", nil];
    self.colorAlert.tag = 1;
    [self.colorAlert show];
}

@end
