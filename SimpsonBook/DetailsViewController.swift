//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Doğukan Aydemir on 26.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson: Simpsons?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image

    }
}
