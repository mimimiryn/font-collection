//
//  atumeruViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/25.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit
import AudioToolbox

class atumeruViewController: UIViewController {
    
    let fontArray: NSArray = ["A1MinchoStd-Bold", "MiGoMB1Std-DeBold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    
    
    
    @IBOutlet var button0: UIButton?
    @IBOutlet var button1: UIButton?
    @IBOutlet var button2: UIButton?
    @IBOutlet var button3: UIButton?
    @IBOutlet var button4: UIButton?
    @IBOutlet var button5: UIButton?
    @IBOutlet var button6: UIButton?
    @IBOutlet var button7: UIButton?
    @IBOutlet var button8: UIButton?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fontArray: NSArray = ["A1MinchoStd-Bold", "MiGoMB1Std-DeBold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
        
        var nameNumber0 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber1 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber2 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber3 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber4 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber5 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber6 = Int(arc4random_uniform(UInt32(fontArray.count)))
        var nameNumber7 = Int(arc4random_uniform(UInt32(fontArray.count)))
        
        
        //        for var i = 0; i > 8; i++ {
        //        var nameNumber = Int(arc4random_uniform(UInt32(fontArray.count))
        //            button[i]?.titleLabel!.font = UIFont(name: fontArray[nameNumber] as! String, size: 130)
        //
        //        }
        
        //var mojiArray: NSArray = ["あ"]
        var mojiArray: NSArray = ["あ","",""]
        var mojiNumber0 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber1 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber2 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber3 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber4 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber5 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber6 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        var mojiNumber7 = Int(arc4random_uniform(UInt32(mojiArray.count)))
        
        
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
    
//    @IBAction func shake(){
//        button0.animation = "shake"
//        button0.animate()
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
