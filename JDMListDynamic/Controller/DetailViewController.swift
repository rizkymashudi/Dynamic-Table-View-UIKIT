//
//  DetailViewController.swift
//  JDMListDynamic
//
//  Created by Rizky Mashudi on 02/08/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameJdm: UILabel!
    @IBOutlet weak var imageJdm: UIImageView!
    @IBOutlet weak var descJdm: UILabel!
    
    var jdm: Jdm?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = jdm{
            nameJdm.text = result.name
            imageJdm.image = result.photo
            descJdm.text = result.desc
        }
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
