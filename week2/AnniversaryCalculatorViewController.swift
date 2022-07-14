//
//  AnniversaryCalculatorViewController.swift
//  week2
//
//  Created by MIN SEONG KIM on 2022/07/13.
//

import UIKit

class AnniversaryCalculatorViewController: UIViewController {
    //MARK: - Properties
    let calendar = Calendar.current
    let currentDate = Date()

    @IBOutlet var dateLabel: [UILabel]!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Action
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
    }
    
    //MARK: - Helpers
    func dateToFormattedString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: Locale.current.identifier)
        dateFormatter.timeZone = TimeZone(identifier: TimeZone.current.identifier)
        dateFormatter.dateFormat = "yyyy년 MM월 dd일"
        
        return dateFormatter.string(from: date)
    }
}
