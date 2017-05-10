//
//  BookViewController.swift
//  BookCollector
//
//  Created by Justin Deal on 5/10/17.
//  Copyright © 2017 J Dub Apps. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {
    @IBOutlet weak var bookImageView: UIImageView!

    @IBOutlet weak var titleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var photosTapped: UIBarButtonItem!
    
    @IBOutlet weak var cameraTapped: UIBarButtonItem!
    
    @IBAction func addTapped(_ sender: Any) {
    }
    
    
}
