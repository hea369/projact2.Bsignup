//
//  thirdViewController.swift
//  projactB.SignUp
//
//  Created by 박호현 on 2022/05/17.
//

import UIKit

class ThirdViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet var numberText: UITextField!
    @IBOutlet var SignUpButton: UIButton!
    @IBOutlet weak var datePiker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    @IBAction func signUpButton2(_ sender: Any) {
            dismiss(animated: true, completion: nil)
    }
    @IBAction func dismissModel3() {
        UserInformation.shared.name = ""
        UserInformation.shared.passward = ""
            dismiss(animated: true, completion: nil)
    }
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        
        let date: Date = self.datePiker.date
        let dateString: String =  self.dateFormatter.string(from: date)
        self.dateLabel.text = dateString
    }
    @IBAction func tapView3(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @IBAction func dismissModel() {
        self.navigationController?.popViewController(animated: true)
    }
}
extension ThirdViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        SignUpButton.isEnabled = false
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        SignUpButton.isEnabled = true
    }
}
