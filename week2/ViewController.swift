//
//  ViewController.swift
//  week2
//
//  Created by MIN SEONG KIM on 2022/07/11.
//

import UIKit

enum EmotionType: Int {
    case happy = 0
    case like
    case love
    case angry
    case bored
    case sleepy
    case embarrassed
    case disappointed
    case upset
}

class ViewController: UIViewController {
    var emotionArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @IBOutlet var countLabelCollection: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Action
    @IBAction func didTappedEmotionButton(_ sender: UIButton) {
        switch sender.tag {
        case EmotionType.happy.rawValue:
            countAndShow(emotion: .happy)
        case EmotionType.like.rawValue:
            countAndShow(emotion: .like)
        case EmotionType.love.rawValue:
            countAndShow(emotion: .love)
        case EmotionType.angry.rawValue:
            countAndShow(emotion: .angry)
        case EmotionType.bored.rawValue:
            countAndShow(emotion: .bored)
        case EmotionType.sleepy.rawValue:
            countAndShow(emotion: .sleepy)
        case EmotionType.embarrassed.rawValue:
            countAndShow(emotion: .embarrassed)
        case EmotionType.disappointed.rawValue:
            countAndShow(emotion: .disappointed)
        case EmotionType.upset.rawValue:
            countAndShow(emotion: .upset)
        default:
            break
        }
        
        
        
//        let countLabel = view.viewWithTag(sender.tag + 10) as! UILabel
//        countLabel.text = "\(Int(countLabel.text!)! + 1)"
        showAlertController()
    }
    
    //MARK: - Helpers
    func countToText(count: Int) -> String {
        return "\(emotionArray[count])"
    }
    
    func countAndShow(emotion: EmotionType) {
        emotionArray[emotion.rawValue] += 1
        countLabelCollection[emotion.rawValue].text = countToText(count: emotion.rawValue)
    }
    
    func showAlertController() {
        // 1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다.", preferredStyle: .alert)
        
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다", style: .cancel, handler: nil) // 가장 아래 & 왼쪽(자리가 만들어져 있다)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        // 3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 4. present
        present(alert, animated: true, completion: nil)
    }
}

