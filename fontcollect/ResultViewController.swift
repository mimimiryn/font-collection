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
    
    @IBOutlet var label:UILabel!
    @IBOutlet var resultTextView:UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        label.text = String(correctAnswer)
        
        if(correctAnswer == 5){
            resultTextView.text = String("フォントマスター！")
            
        }else if(correctAnswer == 4){
            resultTextView.text = String("おしいフォントマスターまでもう少し！")
            
        }else if(correctAnswer == 3){
            resultTextView.text = String("がんばって！")
            
        }else if (correctAnswer == 2){
            resultTextView.text = String("やる気あるー？")
            
        }else if (correctAnswer==1){
            resultTextView.text = String("やる気あるー？")
            
        }else if (correctAnswer==0){
            resultTextView.text = String("出直してこいッ！")
            
        }

}
}
