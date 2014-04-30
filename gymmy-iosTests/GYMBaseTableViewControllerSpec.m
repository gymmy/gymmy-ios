#import "GYMBaseTableViewController.h"
#import <Kiwi/Kiwi.h>

SPEC_BEGIN(GYMBaseTableViewControllerSpec)
	describe(@"GYMBaseTableViewController", ^{
		__block GYMBaseTableViewController *vc;

	    beforeEach(^{
		    vc = [[GYMBaseTableViewController alloc] init];
		    id mockTV = [UITableView mock];
		    vc.tableView = mockTV;
		    vc.title = @"test";
	    });

	    context(@"after the view is loaded", ^{
	        it(@"should have set the tableViews delegate and dataSource to the vc", ^{
	            [[vc.tableView should] receive:@selector(setDelegate:) withArguments:vc];
	            [[vc.tableView should] receive:@selector(setDataSource:) withArguments:vc];
	            [vc viewDidLoad];
	        });
	    });

	    it(@"after the view is loaded it should reload the tableview so no cells are selected", ^{
	        [[vc.tableView should] receive:@selector(reloadData)];
	        [vc viewWillAppear:NO];
	    });

	    it(@"should be a subclass of GYMBaseViewController", ^{
	        [[vc should] beKindOfClass:[GYMBaseViewController class]];
	    });
	});
SPEC_END