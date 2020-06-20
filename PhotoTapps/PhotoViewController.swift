//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Artur Anissimov on 21.06.2020.
//  Copyright © 2020 Artur Anissimov. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Done!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    
}
