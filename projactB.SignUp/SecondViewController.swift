//
//  SecondViewController.swift
//  projactB.SignUp
//
//  Created by 박호현 on 2022/05/17.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var password2Field: UITextField!
    
    //   @IBAction func touchUpsetButton(_ sender: UIButton) {
    //        UserInformation.shared.name = nameField.text
    //        UserInformation.shared.passward = passwordField.text
    //        UserInformation.shared.passward2 = password2Field.text
    //     }
    
    lazy var imagePicker: UIImagePickerController = {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        return picker
    }()
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchUpSelectImageButton(_ sender: UIButton) {
        self.present(self.imagePicker, animated: true, completion:  nil)
    }
    
    // @IBAction func popToPrev() {
    //    self.navigationController?.popViewController(animated: true)
    
    @IBAction func dismissModel() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension SecondViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        nextButton.isEnabled = false
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if nextButton.isEnabled == true {
            UserInformation.shared.passward = UserInformation.shared.passward2
        }
    }
}

extension SecondViewController: UIImagePickerControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.imageView.image = originalImage
        }
        self.dismiss(animated: true, completion: nil)
    }
}
