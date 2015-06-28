//
//  ResultViewController.swift
//  fontcollect
//
//  Created by miryon on 2015/06/28.
//  Copyright (c) 2015年 miryon. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var correctAnswer:Int = 0
    
    @IBOutlet var resultTextView:UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if(correctAnswer == 5){
            resultTextView.text = String("全問正解！　動物マスター！")
            
        }else if(correctAnswer == 4){
            resultTextView.text = String("4問正解！　おしい動物マスターまでもう少し！")
            
        }else if(correctAnswer == 3){
            resultTextView.text = String("3問正解! がんばって！")
            
        }else if (correctAnswer == 2){
            resultTextView.text = String("2問正解、、、　やる気あるー？")
            
        }else if (correctAnswer==1){
            resultTextView.text = String("1問正解、、、　やる気あるー？")
        }else if (correctAnswer==0){
            resultTextView.text = String("1問正解、、、　出直してこいっ！！！！")
        }
    }

}
