//
//  ViewController.swift
//  DatePicker
//
//  Created by student on 2/22/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myDatePicker: UIDatePicker!
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Other styles are medium, long and full
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
    }
    
    func ShowAlert(dateTime: String) {
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        
        ShowAlert(dateTime: selectedDate)
    }
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        
        ShowAlert(dateTime: selectedDate)
    }
}
