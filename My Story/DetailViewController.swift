//
//  DetailViewController.swift
//  My Story
//
//  Created by Dinh Viet Kien on 24/02/2023.
//

import UIKit

class DetailViewController: UIViewController {
    var story: Story?
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = story?.title
        imageLabel.image = story?.image
        infoLabel.text = story?.info
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
