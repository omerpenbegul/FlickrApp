//
//  PhotoDetailViewController.swift
//  FlickrApp
//
//  Created by Ömer  PENBEGÜL on 9.05.2025.
//

import UIKit
class PhotoDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var ownerNameLabel: UILabel!
    
    @IBOutlet weak var ownerImageView: UIImageView!
    
    @IBOutlet weak var desciraptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        title = "Photo Detail"
       // imageView.backgroundColor = .gray
       // ownerImageView.backgroundColor = .darkGray
        ownerNameLabel.text = "Owner Name"
        desciraptionLabel.text = "Description Label Description Label Description LabelDescription Label Description Label Description LabelDescription Label Description Label Description Label Description Label Description Label Description Label Description Label Description Label Description LabelDescription Label Description Label Description Label Description LabelDescription Label Description Label Description LabelDescription Label Description Label Description Label Description Label Description Label Description Label Description Label Description Label Description LabelDescription Label"
        
        
    }
    
    
    
    
    
    
}


