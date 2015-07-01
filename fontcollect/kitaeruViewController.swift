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
    
    var nameArray = ["見出ゴMB1","A1 明朝","おめかし","round-mplus-1p-thin","えるまー","さむらい"]
    
    var fontArray = [ "MiGoMB1Std-DeBold", "A1MinchoStd-Bold", "Omekashi-Font", "rounded-mplus-1p-thin", "ElmerFont", "Samurai"]
    
    var font: UIFont!
    
    //出題数
    var questionNumber:Int = 5
    
    //現在の問題数
    var sum:Int = 0
    
    //正解数
    var correctAnswer:Int = 0
    
    //@IBOutlet var seikai: UIImageView!
    
    //何番目ボタンに正解を入れるか
    var correctNumber = Int(arc4random_uniform(UInt32(2)))
    
    @IBOutlet var wakuhaikei: UIImageView!
    @IBOutlet var seigomoji: UILabel!
    @IBOutlet var seigoname: UILabel!
    @IBOutlet var nextquiz: UIButton!
    @IBOutlet var seigoimage: UIImageView!
    @IBOutlet var seigo: UILabel!
    @IBOutlet var mondaisuu: UILabel!
    
    //var nameNumber: Int = 0
    //var rondom: Int = 0
    
    //var nameNumber = Int(arc4random_uniform(UInt32(5)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nextquiz.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        wakuhaikei.hidden = true
        seigomoji.hidden = true
        seigoname.hidden = true
        nextquiz.hidden = true
        seigoimage.hidden = true
        seigo.hidden = true
        
        choiceQuiz()
        
        mondaisuu.text = "\(String(sum))問目"
        
    }
    
    func choiceQuiz(){
        myLabel2.text = "あ"
        
        //正解フォント選ぶ
        var nameNumber = Int(arc4random_uniform(UInt32(fontArray.count)))
        //そのフォントで文字を書く
        myLabel2.font = UIFont(name:fontArray[nameNumber], size: 130)
        
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
        
        seigomoji.text = "あ"
//        seigomoji.font = UIFont(name:fontArray[nameNumber], size: 150)
//        seigoname.text = nameArray[nameNumber]
//        seigoname.font = UIFont(name:fontArray[nameNumber], size: 23)
        
        
        wakuhaikei.hidden = false
        seigomoji.hidden = false
        seigoname.hidden = false
        nextquiz.hidden = false
        seigoimage.hidden = false
        seigo.hidden = false
        
        if correctNumber as Int == sender.tag {
            
            let img = UIImage(named:"正解.png")
            seigoimage.image = img
            seigo.text = "正解！"
            
            //正解数を増やす
            correctAnswer++
            
        }else{
            
            let img = UIImage(named:"不正解.png")
            seigoimage.image = img
            seigo.text = "不正解！"
        }
        
        if self.sum == self.questionNumber {
            self.performSegueToResult()
        }
        //nameArray.removeAtIndex(nameNumber)
        choiceQuiz()
    }
    
    internal func onClickMyButton(sender: UIButton!){
        wakuhaikei.hidden = true
        seigomoji.hidden = true
        seigoname.hidden = true
        nextquiz.hidden = true
        seigoimage.hidden = true
        seigo.hidden = true
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


