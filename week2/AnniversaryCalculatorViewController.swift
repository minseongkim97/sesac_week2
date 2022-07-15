//
//  AnniversaryCalculatorViewController.swift
//  week2
//
//  Created by MIN SEONG KIM on 2022/07/13.
//

import UIKit

class AnniversaryCalculatorViewController: UIViewController {
    //MARK: - Properties
    let ddays = [100, 200, 300 ,400]
    @IBOutlet var dateLabels: [UILabel]!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDate(date: Date())
    }
    
    //MARK: - Action
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        changeDate(date: sender.date)
    }
    
    //MARK: - Helpers
    func dateToFormattedString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: Locale.current.identifier)
        dateFormatter.timeZone = TimeZone(identifier: TimeZone.current.identifier)
        dateFormatter.dateFormat = "yyyy년 MM월 dd일"
        
        return dateFormatter.string(from: date)
    }
    
    func calculateDate(date: Date) -> [Date] {
        var dates = [Date]()
        let calendar = Calendar.current
        for dday in ddays {
            dates.append(calendar.date(byAdding: .day, value: dday, to: date)!)
        }
        
        return dates
    }
    
    func changeDate(date: Date) {
        for i in 0..<dateLabels.count {
            dateLabels[i].text = dateToFormattedString(date: calculateDate(date: date)[i])
        }
    }
}
