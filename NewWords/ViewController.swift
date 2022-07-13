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
    
    func searchNewWords(word: UITextField) {
        // let rawValue = NewWord.RawValue() -> 이건 오류가 안 뜨는데 어떻게 사용하는거지
//
//        let search = textField.text
//       var searchResult = "나는야 신조어"
//
//       switch search {
//        case NewWord.gguanggu.rawValue:
//           searchResult = NewWord.gguanggu.saydescriptionOfNewWord()
//        case NewWord.samguija.rawValue:
//             searchResult = NewWord.samguija.saydescriptionOfNewWord()
//        case NewWord.yungcha.rawValue:
//             searchResult =  NewWord.yungcha.saydescriptionOfNewWord()
//        default: searchResult = "알 수 없는 단어입니다😅"
//        }
//       return searchResult
        
        let newWordList: [String?: String] = ["꾸안꾸": "꾸민듯 안꾸민듯 꾸민느낌"]
       
         //MARK: 딕셔너리로 신조어 처리할 때 작성
        descriptionNewWords.text = newWordList[word.text]
        // 중위연산자
        
//         for i in newWordList {
//         if i.key == word.text {
//         descriptionNewWords.text = i.value
//         } else {
//         descriptionNewWords.text = "시스템 오류입니다😓"
//         }
//         }
  
    }
    
    func makeBtnUI(_ button : [UIButton]!) {
        for i in button {
            i.layer.cornerRadius = 13
            i.layer.borderColor = UIColor.black.cgColor
            i.layer.borderWidth = 1
        }
    }
    
    @IBAction func downkeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func exitKeyboard(_ sender: Any) {
//        descriptionNewWords.text = searchNewWords()
        searchNewWords(word: textField)
        view.endEditing(true)
    }
}
