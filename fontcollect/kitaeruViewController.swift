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
    @IBOutlet var choiceButton: Array<UIButton> = []
    //@IBOutlet var choiceButton: UIButton!
    //@IBOutlet var choiceButton: UIButton!
    
    var nameArray = ["A-OTF 見出ゴMB1 Std DeBold","A-OTF-A1 明朝Std-Bold","おめかし","round-mplus-1p-thin","えるまー","さむらい"]
    
    var fontArray = [ "MiGoMB1Std-DeBold", "A1MinchoStd-Bold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    
    var font: UIFont!
    
    //出題数
    var questionNumber:Int = 5
    
    //現在の問題数
    var sum:Int = 0
    
    //正解数
    var correctAnswer:Int = 0
    
    @IBOutlet var seikai: UIImageView!
    
    //何番目ボタンに正解を入れるか
    var correctNumber = Int(arc4random_uniform(UInt32(2)))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        seikai.hidden = true
        
        choiceQuiz()
        
    }
    
    
    func choiceQuiz(){
        myLabel2.text = "あ"
        
        //正解フォント選ぶ
        var nameNumber = Int(arc4random_uniform(UInt32(fontArray.count)))
        
        //そのフォントで文字を書く
        myLabel2.font = UIFont(name:fontArray[nameNumber], size: 130)
        
        
        
        //        correctNumber.setTitle("choiceButton[correctNumber]", forState: UIControlState.Normal) =
        //            nameNumber.setTitle("nameArray[nameNumber]", forState: UIControlState.Normal)
        
        //choiceButton[correctNumber] = nameArray[nameNumber]
        
        var nameArrray2 = nameArray
        nameArrray2.removeAtIndex(nameNumber)
        for var i = 0; i < 3; i++ {
            var randomChoice = Int(arc4random_uniform(UInt32(nameArrray2.count)))
            choiceButton[i].setTitle(nameArrray2[randomChoice] as NSString as String,forState: .Normal)
            
            nameArrray2.removeAtIndex(randomChoice)
        }
        
        
        choiceButton[correctNumber].setTitle(nameArray[nameNumber] as NSString as String, forState: .Normal)
        
        
        
    }
    
    
    @IBAction func choiceAnswer(sender: UIButton) {
        sum++
        println("random \(random)")
        if correctNumber as Int == sender.tag {
            
            seikai.hidden = false
            
            let img = UIImage(named:"正解.png")
            seikai!.image = img
            
            
            
            //正解数を増やす
            correctAnswer++
        }else{
            
            seikai.hidden = false
            
            let img = UIImage(named:"不正解.png")
            seikai!.image = img
        }
        
        
        if sum == questionNumber {
            performSegueToResult()
        }
        nameNumber.removeAtIndex(random())
        choiceQuiz()
        
        //  }
    }
    
    
    
    func performSegueToResult() {
        performSegueWithIdentifier("toResultView", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toResultView") {
            
            var ResultView : ResultViewController = segue.destinationViewController as! ResultViewController
            
            ResultView.correctAnswer = self.correctAnswer
        }
    }
    
        
        
        
        
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
}


