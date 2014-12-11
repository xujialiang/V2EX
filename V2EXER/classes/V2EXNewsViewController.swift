//
//  V2EXNewsViewController.swift
//  V2EXER
//
//  Created by jialiang.xu on 14/12/10.
//  Copyright (c) 2014年 xujialiang. All rights reserved.
//

import Foundation

class NewsViewController: UIViewController, ASTableViewDataSource, ASTableViewDelegate {
    
    var tableView: ASTableView;
    var storeHouseRefreshControl:CBStoreHouseRefreshControl!;
    
    required override init() {
        self.tableView = ASTableView()
        
        
        super.init(nibName: nil, bundle: nil)
        
        self.tableView.asyncDataSource = self
        self.tableView.asyncDelegate = self
    }
    
    required convenience init(coder aDecoder: NSCoder) {
        self.init();
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.addHeaderWithCallback({
            var delayInSeconds:Int64 =  1000000000  * 2
            var popTime:dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW,delayInSeconds)
            dispatch_after(popTime, dispatch_get_main_queue(), {
                self.tableView.reloadData()
                self.tableView.headerEndRefreshing()
            })
        })
        
        self.tableView.addFooterWithCallback { () -> Void in
            var delayInSeconds:Int64 =  1000000000  * 2
            var popTime:dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW,delayInSeconds)
            dispatch_after(popTime, dispatch_get_main_queue(), {
                self.tableView.reloadData();
                self.tableView.footerEndRefreshing();
            })
        };
        
        self.view.addSubview(self.tableView)
        
        
    }
    
    override func viewWillLayoutSubviews() {
        self.tableView.frame = self.view.bounds
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // MARK: ASTableView data source and delegate.
    
    func tableView(tableView: ASTableView!, nodeForRowAtIndexPath indexPath: NSIndexPath!) -> ASCellNode! {
        let patter = NSString(format: "[%ld.%ld] says hello!", indexPath.section, indexPath.row)
        let node = ASTextCellNode()
        node.text = patter
        
        return node
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    
    
}