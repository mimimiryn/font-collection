//
//  kitaeruViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/25.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit

class kitaeruViewController: UIViewController {
    
    @IBOutlet var myLabel2: UILabel!
    @IBOutlet var choiceButtons: UIButton!
    
    
    var choiceButtons = ["A-OTF 見出ゴMB1 Std DeBold","A-OTF-A1 明朝Std-Bold","おめかし","round-mplus-1p-thin","えるまー","さむらい"]
    var fontArray = ["A1MinchoStd-Bold", "MiGoMB1Std-DeBold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    var font: UIFont!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        myLabel2.text = "あ"
        var nameNumber = Int(arc4random_uniform(UInt32(fontArray.count)))
        myLabel2.font = UIFont(name:fontArray[nameNumber], size: 130)
        
        for var i = 0; i < choiceButtons.count; i++ {
            choiceButtons[i].setTitle(quizArray[random][i+1] as! NSString as String,forState: .Normal)
        
        
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
