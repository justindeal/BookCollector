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
        
    }

  
    @IBAction func cameraTapped(_ sender: Any) {
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
    }
    
    
}
