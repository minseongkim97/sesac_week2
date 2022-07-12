//
//  SegmentViewController.swift
//  week2
//
//  Created by MIN SEONG KIM on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea
    case other
}

class SegmentViewController: UIViewController {
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentValueChanged(segmentControl)
    }
    
    
    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case MusicType.all.rawValue:
            break
        case MusicType.korea.rawValue:
            break
        case MusicType.other.rawValue:
            break
        default:
            break
        }
    }
}
