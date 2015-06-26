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
    @IBOutlet var label1: UILabel!
    
    let label1Array: NSArray = ["A-OTF 見出ゴMB1 Std DeBold","A-OTF-A1 明朝Std-Bold","round-mplus-1p-thin","えるまー","おめかし","さむらい"]
    
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
        return 6
        
    }
    
    //セルの中身
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = TableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
//        let img = UIImage(named: "KKK.png")
//        cell.imageView!.image = img
//        cell.textLabel?.text = "あ"
        self.tableView.rowHeight = 130
        
        
        var label1 = tableView.viewWithTag(1) as UILabel?
        label1!.text = "\(label1Array[indexPath.row])"
        
//        var label1 = UILabel(Array.self,"\(label1Array[indexPath.row])")
//        cell.textLabel!.text = label1
        return cell
        
    }
    
    
}
