//
//  atumeruViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/25.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit

class atumeruViewController: UIViewController {
    
    @IBOutlet weak var button0: SpringButton!
    @IBOutlet weak var button1: SpringButton!
    @IBOutlet weak var button2: SpringButton!
    @IBOutlet weak var button3: SpringButton!
    @IBOutlet weak var button4: SpringButton!
    @IBOutlet weak var button5: SpringButton!
    @IBOutlet weak var button6: SpringButton!
    @IBOutlet weak var button7: SpringButton!
    
    
    var fontArray: NSArray = ["A1MinchoStd-Bold", "MiGoMB1Std-DeBold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    
    var nameNumber0: Int!
    var nameNumber1: Int!
    var nameNumber2: Int!
    var nameNumber3: Int!
    var nameNumber4: Int!
    var nameNumber5: Int!
    var nameNumber6: Int!
    var nameNumber7: Int!
    
    var mojiNumber0: Int!
    var mojiNumber1: Int!
    var mojiNumber2: Int!
    var mojiNumber3: Int!
    var mojiNumber4: Int!
    var mojiNumber5: Int!
    var mojiNumber6: Int!
    var mojiNumber7: Int!
    
    var mojiArray: NSArray = ["あ","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameNumber0 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber1 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber2 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber3 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber4 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber5 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber6 = Int(arc4random_uniform(UInt32(fontArray.count)))
        nameNumber7 = Int(arc4random_uniform(UInt32(fontArray.count)))
        
        println(nameNumber0)
        println(nameNumber1)
        println(nameNumber2)
        println(nameNumber3)
        println(nameNumber4)
        println(nameNumber5)
        println(nameNumber6)
        println(nameNumber7)
        
        
        mojiNumber0 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber1 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber2 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber3 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber4 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber5 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber6 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        mojiNumber7 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        
        
        button0?.setTitle(mojiArray[mojiNumber0] as? String, forState: .Normal)
        button1?.setTitle(mojiArray[mojiNumber1] as? String, forState: .Normal)
        button2?.setTitle(mojiArray[mojiNumber2] as? String, forState: .Normal)
        button3?.setTitle(mojiArray[mojiNumber3] as? String, forState: .Normal)
        button4?.setTitle(mojiArray[mojiNumber4] as? String, forState: .Normal)
        button5?.setTitle(mojiArray[mojiNumber5] as? String, forState: .Normal)
        button6?.setTitle(mojiArray[mojiNumber6] as? String, forState: .Normal)
        button7?.setTitle(mojiArray[mojiNumber7] as? String, forState: .Normal)
        
        button0?.titleLabel!.font = UIFont(name:fontArray[nameNumber0] as! String, size: 100)
        button1?.titleLabel!.font = UIFont(name:fontArray[nameNumber1] as! String, size: 40)
        button2?.titleLabel!.font = UIFont(name:fontArray[nameNumber2] as! String, size: 30)
        button3?.titleLabel!.font = UIFont(name:fontArray[nameNumber3] as! String, size: 50)
        button4?.titleLabel!.font = UIFont(name:fontArray[nameNumber4] as! String, size: 50)
        button5?.titleLabel!.font = UIFont(name:fontArray[nameNumber5] as! String, size: 45)
        button6?.titleLabel!.font = UIFont(name:fontArray[nameNumber6] as! String, size: 100)
        button7?.titleLabel!.font = UIFont(name:fontArray[nameNumber7] as! String, size: 95)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button0(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru0 = nameNumber0 //appDelegateの変数を操作
        
        button0.animation = "flash"
        button0.animate()
        
        button0.animation = "fadeOut"
        button0.animate()
        
        println(appDelegate.okuru0)
        
    }
    
    @IBAction func button1(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru1 = nameNumber1 //appDelegateの変数を操作
        
        button1.animation = "flash"
        button1.animate()
        
        button1.animation = "fadeOut"
        button1.animate()
        
                println(appDelegate.okuru1)
    }

    @IBAction func button2(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru2 = nameNumber2 //appDelegateの変数を操作
        
        button2.animation = "flash"
        button2.animate()
        
        button2.animation = "fadeOut"
        button2.animate()
        
                println(appDelegate.okuru2)
    }

    @IBAction func button3(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru3 = nameNumber3 //appDelegateの変数を操作
        
        button3.animation = "flash"
        button3.animate()
        
        button3.animation = "fadeOut"
        button3.animate()
        
                println(appDelegate.okuru3)
    }

    @IBAction func button4(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru4 = nameNumber4 //appDelegateの変数を操作
        
        button4.animation = "flash"
        button4.animate()
        
        button4.animation = "fadeOut"
        button4.animate()
        
                println(appDelegate.okuru4)
    }
    
    @IBAction func button5(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru5 = nameNumber5 //appDelegateの変数を操作
        
        button5.animation = "flash"
        button5.animate()
        
        button5.animation = "fadeOut"
        button5.animate()
        
                println(appDelegate.okuru5)
        
        
    }

    @IBAction func button6(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru6 = nameNumber6 //appDelegateの変数を操作
        
        button6.animation = "flash"
        button6.animate()
        
        button6.animation = "fadeOut"
        button6.animate()
        
                println(appDelegate.okuru6)
        
        
    }

    @IBAction func button7(sender: SpringButton) {
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        appDelegate.okuru7 = nameNumber7 //appDelegateの変数を操作
        
        button7.animation = "flash"
        button7.animate()
        
        button7.animation = "fadeOut"
        button7.animate()
        
                println(appDelegate.okuru7)
    }


    
    //    @IBAction func tapkey(sender: UILabel!){
    //        var myDefault = NSUserDefaults.standardUserDefaults()
    //        myDefault.setObject(mojiArray, forKey: "fontkey")
    //    }
    
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
