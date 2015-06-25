//
//  nagameruViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/25.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit

class nagameruViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    //セルの中身
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = TableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = "あ"
        self.tableView.rowHeight = 130
        
        
        //文字セルの何番目か
        cell.textLabel?.text = String(indexPath.row)
        return cell
        
    }
    
    
}
