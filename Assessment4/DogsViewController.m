//
//  DogsViewController.m
//  Assessment4
//
//  Created by Vik Denic on 8/11/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "DogsViewController.h"

@interface DogsViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *dogsTableView;

@end

@implementation DogsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"My Dogs";
}

#pragma mark - UITableView Delegate Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //TODO: UPDATE THIS ACCORDINGLY
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dogCell"];
    //TODO: UPDATE THIS ACCORDINGLY
    return cell;
}

@end
