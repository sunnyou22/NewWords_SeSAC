//
//  ViewController.swift
//  NewWords
//
//  Created by 방선우 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet var hashTagBtns: [UIButton]!
    @IBOutlet weak var descriptionNewWords: UILabel!
    
    @IBOutlet weak var test: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.black.cgColor
        textField.keyboardType = .default
        
        makeBtnUI(hashTagBtns)
      
    }
    
    func makeBtnUI(_ button : [UIButton]!) {
        for button in hashTagBtns {
            button.layer.cornerRadius = 13
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 1
        }
    }

    @IBAction func downKeydoard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    @IBAction func searchBtn(_ sender: Any) {
        if textField.text == "삼귀자" {
            descriptionNewWords.text = "연애를 시작하기 전 단계"
        }
    }
    
}

