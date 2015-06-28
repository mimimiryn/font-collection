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
    
    let nameArray: NSArray = ["見出ゴMB1","A1 明朝","おめかし","round-mplus-1p-thin","えるまー","さむらい"]
    let fontArray: NSArray = ["A1MinchoStd-Bold", "MiGoMB1Std-DeBold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    
    //let explainArray: NSArray = ["","綺麗"
    
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
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! Na_tableViewCell
        //        let img = UIImage(named: "KKK.png")
        //        cell.imageView!.image = img
        //        cell.textLabel?.text = "あ"
        self.tableView.rowHeight = 152
        
        
        cell.name.text = "\(nameArray[indexPath.row])"
        cell.name.font = UIFont(name:fontArray[indexPath.row] as! String, size: 20)
        cell.mozi.text = "あ"
        cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 75)
        return cell
        
    }
    
    
}
