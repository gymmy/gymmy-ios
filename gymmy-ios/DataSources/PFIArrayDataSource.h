//
//  Created by pfitz on 01.07.13.
//
//  Pfitzmann Software Solutions / www.pfiss.com
//  
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

/**
* A class with conforms to the **required** `UITableViewDataSource` and `UICollectionViewDataSource` protocol
* methods to allow easy hook up of an `NSArray` as a dataSource.
*/

@interface PFIArrayDataSource : NSObject  <UITableViewDataSource,UICollectionViewDataSource>


/// ---------------------------------
/// @name Creating an arrayDataSource
/// ---------------------------------


/**
*  The designated initializer for the `PFIArrayDataSource`. You give it the basic needed information and
*  the `PFIArrayDataSource` will act as an valid `UITableViewDataSource`/`UICollectionViewDataSource` object
*  and answer the **required** methods.
*
*  TableViewCellConfigureBlock = `typedef void (^TableViewCellConfigureBlock)(id cell, id item);`
*
*  @param anItems A NSArray backing the dataSource
*  @param aCellIdentifier A Cell identifier for dequeing the cells.
*  @param aConfiguredCellBlock A `TableViewCellConfigureBlock` to configure the cells to custom needs.
*
*  @return An fully valid object with answers the required `UITableViewDataSource` methods.
*
*  @see UITableViewDataSource
*/
- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;


/// ---------------------------------
/// @name Accessing items in the arrayDataSource
/// ---------------------------------

/**
*   Accessing the items in the arrayDataSource
*
*   @param indexPath An `indexPath` object
*
*   @return The object at the specified `indexPath`.
*
*/
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
@end