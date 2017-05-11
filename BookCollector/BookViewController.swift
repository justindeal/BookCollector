//
//  BookViewController.swift
//  BookCollector
//
//  Created by Justin Deal on 5/10/17.
//  Copyright © 2017 J Dub Apps. All rights reserved.
//

import UIKit

class BookViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var bookImageView: UIImageView!

    @IBOutlet weak var titleTextField: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
    }

    @IBAction func photosTapped(_ sender: Any) {
        
        //Tell system to get pictures from album
        imagePicker.sourceType = .photoLibrary
        
        //Pull up another ViewController with the pictures
        present(imagePicker, animated: true, completion: nil)
        
        //Be sure to go to Info.plist to ensure access to Privacy - Photo Library!
        
    }
    
    //Add this function to bring selected photo from library back to Image View
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        bookImageView.image = image
        
        //Need to dismiss the imagePicker View Controller
        imagePicker.dismiss(animated: true, completion: nil)
    }

  
    @IBAction func cameraTapped(_ sender: Any) {
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let book = Book(context: context)
        book.title = titleTextField.text
        book.image = UIImagePNGRepresentation(bookImageView.image!)! as NSData
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
        
    }
    
    
}
