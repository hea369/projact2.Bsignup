    //
    //  SecondViewController.swift
    //  projactB.SignUp
    //
    //  Created by 박호현 on 2022/05/17.
    //

    import UIKit

    class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        lazy var imagePicker: UIImagePickerController = {
            let picker: UIImagePickerController = UIImagePickerController()
            picker.sourceType = .photoLibrary
            picker.delegate = self
            return picker
        }()
        
        
        @IBOutlet weak var imageView: UIImageView!
        
        @IBAction func touchUpSelectImageButton(_ sender: UIButton) {
            self.present(self.imagePicker, animated: true, completion:  nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                self.imageView.image = originalImage
            }
            
            self.dismiss(animated: true, completion: nil)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        // @IBAction func popToPrev() {
        //    self.navigationController?.popViewController(animated: true)
        
        @IBAction func dismissModel() {
            self.dismiss(animated: true, completion: nil)
        }
        
        @IBAction func tapView(_ sender: UITapGestureRecognizer) {
            self.view.endEditing(true)
            
        }
    }
