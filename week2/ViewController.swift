//
//  ViewController.swift
//  week2
//
//  Created by MIN SEONG KIM on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    //MARK: - Action
    @IBAction func didTappedEmotionButton(_ sender: UIButton) {
        let countLabel = view.viewWithTag(sender.tag + 10) as! UILabel
        countLabel.text = "\(Int(countLabel.text!)! + 1)"
    }
    
}

