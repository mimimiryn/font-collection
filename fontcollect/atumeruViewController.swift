//
//  atumeruViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/25.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit

class atumeruViewController: UIViewController {
    
//    
//    @IBOutlet weak var button1: SpringButton!
//    @IBOutlet weak var button2: SpringButton!
//    @IBOutlet weak var button3: SpringButton!
//    @IBOutlet weak var button4: SpringButton!
//    @IBOutlet weak var button5: SpringButton!
//    @IBOutlet weak var button6: SpringButton!
//    @IBOutlet weak var button7: SpringButton!
    
    
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
        button0.animation = "flash"
        button0.animate()
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
