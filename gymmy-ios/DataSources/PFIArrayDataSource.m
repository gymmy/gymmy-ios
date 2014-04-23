    //
//  Created by pfitz on 01.07.13.
//
//  Pfitzmann Software Solutions / www.pfiss.com
//  
//


#import "PFIArrayDataSource.h"


@interface PFIArrayDataSource ()
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;
@end

@implementation PFIArrayDataSource {
}

#pragma mark - initialization

- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock {
	NSParameterAssert(anItems != nil);
	NSParameterAssert(aCellIdentifier != nil);
	NSParameterAssert(aConfigureCellBlock != nil);

	self = [super init];
	if (self) {
		self.items = anItems;
		self.cellIdentifier = aCellIdentifier;
		self.configureCellBlock = [aConfigureCellBlock copy];
	}

	return self;
}

- (id)init {
	NSAssert(nil, @"You are calling init - please use initWithItems:cellIdentifier:configureCellBlock");
	return nil;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
	return self.items[(NSUInteger) indexPath.row];
}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)__unused tableView numberOfRowsInSection:(NSInteger)__unused section {
	return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
	id item = [self itemAtIndexPath:indexPath];
	self.configureCellBlock(cell,item);
	return cell;
}

#pragma mark - UICollectionViewDataSource methods

- (NSInteger)collectionView:(UICollectionView *)__unused collectionView numberOfItemsInSection:(NSInteger)__unused section {
	return [self.items count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier forIndexPath:indexPath];
	id item = [self itemAtIndexPath:indexPath];
	self.configureCellBlock(cell,item);
	return cell;
}


@end

