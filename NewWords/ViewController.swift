//
//  ViewController.swift
//  NewWords
//
//  Created by 방선우 on 2022/07/11.
//

import UIKit

enum NewWord: String {
    case gguanggu = "꾸안꾸"
    case yungcha = "윰차"
    case samguija = "삼귀자"
    
    func saydescriptionOfNewWord() -> String {
        switch self {
        case .gguanggu:
            return "꾸민듯~ 안 꾸민듯~ 결국 꾸민 상태"
        case .yungcha:
            return "유모차의 줄임말"
        case .samguija:
            return "연애를 시작하기 전 썸단계~"
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet var hashTagBtns: [UIButton]!
    @IBOutlet weak var descriptionNewWords: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor.black.cgColor
        textField.keyboardType = .default
        
        makeBtnUI(hashTagBtns)
        
    }
    
   @discardableResult func searchNewWords() -> String {
        // let rawValue = NewWord.RawValue() -> 이건 오류가 안 뜨는데 어떻게 사용하는거지
        let a = textField.text
        var b = descriptionNewWords.text
        
        switch a {
        case NewWord.gguanggu.rawValue:
           b = NewWord.gguanggu.saydescriptionOfNewWord()
        case NewWord.samguija.rawValue:
             b = NewWord.samguija.saydescriptionOfNewWord()
        case NewWord.yungcha.rawValue:
             b =  NewWord.yungcha.saydescriptionOfNewWord()
        default: b = "알 수 없는 단어입니다😅"
        }
        
        /*
         //MARK: 딕셔너리로 신조어 처리할 때 작성
         for i in newWordList {
         if i.key == words.text {
         descriptionNewWords.text = i.value
         } else {
         descriptionNewWords.text = "시스템 오류입니다😓"
         }
         }
         */
        return b!
    }
    
    func makeBtnUI(_ button : [UIButton]!) {
        for button in hashTagBtns {
            button.layer.cornerRadius = 13
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.borderWidth = 1
        }
    }
    
    @IBAction func downkeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    // 아래 둘은 들어간 함수는 같은데 이벤트가 다르다. 어떻게 통일시키지..
    @IBAction func searchWords(_ sender: UIButton) {
        searchNewWords()
        view.endEditing(true)
    }
    
    @IBAction func enterExitKeyboard(_ sender: UITextField) {
        searchNewWords()
        textField.endEditing(true)
    }
}
