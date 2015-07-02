//
//  nagameruViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/25.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit

class nagameruViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var fontNumber20 : Int?
    var fontNumber21 : Int?
    var fontNumber22 : Int?
    var fontNumber23 : Int?
    var fontNumber24 : Int?
    var fontNumber25 : Int?
    var fontNumber26 : Int?
    var fontNumber27 : Int?
    
    //    var font0 :String?
    //    var font1 :String?
    //    var font2 :String?
    //    var font3 :String?
    //    var font4 :String?
    //    var font5 :String?
    //    var font6 :String?
    //    var font7 :String?
    
    
    
    var nameArray: NSArray = ["A1 明朝","見出ゴMB1","おめかし","round-mplus-1p-thin","えるまー","さむらい"]
    var fontArray: NSArray = ["A1MinchoStd-Bold", "MiGoMB1Std-DeBold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    
    //let explainArray: NSArray = ["","綺麗"]
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        fontNumber20 = appDelegate.okuru0
        fontNumber21 = appDelegate.okuru1
        fontNumber22 = appDelegate.okuru2
        fontNumber23 = appDelegate.okuru3
        fontNumber24 = appDelegate.okuru4
        fontNumber25 = appDelegate.okuru5
        fontNumber26 = appDelegate.okuru6
        fontNumber27 = appDelegate.okuru7
        
        println(fontNumber20)
        println(fontNumber21)
        println(fontNumber22)
        println(fontNumber23)
        println(fontNumber24)
        println(fontNumber25)
        println(fontNumber26)
        println(fontNumber27)
        
        
        //        font0 = fontArray[fontNumber20!] as? String
        //        font1 = fontArray[fontNumber21!] as? String
        //        font2 = fontArray[fontNumber22!] as? String
        //        font3 = fontArray[fontNumber23!] as? String
        //        font4 = fontArray[fontNumber24!] as? String
        //        font5 = fontArray[fontNumber25!] as? String
        //        font6 = fontArray[fontNumber26!] as? String
        //        font7 = fontArray[fontNumber27!] as? String
        
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
        
        
        if fontNumber20==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
            println(fontNumber20)
            
        }else if fontNumber21==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber21)
            
        }else if fontNumber22==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber22)
            
        }else if fontNumber23==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber23)
            
        }
        else if fontNumber24==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber24)
            
        }
        else if indexPath.row==fontNumber25{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber25)
            
        }
        else if fontNumber26==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber26)
            
        }else if fontNumber27==indexPath.row{
            
            cell.mozi.text = "あ"
            cell.mozi.font = UIFont(name:fontArray[indexPath.row] as! String, size: 100)
            
             println(fontNumber27)
            
        }
        return cell
        
    }}


//        cell.mozi.text = "あ"
//        cell.mozi.font = UIFont(name:(fontArray[indexPath.row] as? String)!, size: 100)
//        return cell

//        cell.mozi.font = UIFont(name:(font0[fontNumber20!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font1[fontNumber21!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font2[fontNumber22!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font3[fontNumber23!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font4[fontNumber24!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font5[fontNumber25!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font6[fontNumber26!] as? String)!, size: 100)
//        cell.mozi.font = UIFont(name:(font7[fontNumber27!] as? String)!, size: 100)
