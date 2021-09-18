//
//  ViewController.swift
//  JDMListDynamic
//
//  Created by Rizky Mashudi on 02/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jdmTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //set title on nav controller
        self.navigationItem.title = "Jdm Hero"
        
        jdmTable.dataSource = self
        jdmTable.delegate = self
        
        
        jdmTable.register(UINib(nibName: "JdmTableViewCell", bundle: nil), forCellReuseIdentifier: "JdmCell")
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //call view controller with NIB/xib didalamnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        //send data jdm
        detail.jdm = heroes[indexPath.row]
        
        //push ke view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //menghubungkan cell dengan identifier
        if let cell = tableView.dequeueReusableCell(withIdentifier: "JdmCell", for: indexPath) as? JdmTableViewCell {
            
            //set value jdm ke view didalam cell
            let jdm = heroes[indexPath.row]
            cell.imageCell.image = jdm.photo
            cell.titleCell.text = jdm.name
            cell.descCell.text = jdm.desc
            
            cell.imageCell.layer.cornerRadius = cell.imageCell.frame.height / 2
            cell.imageCell.clipsToBounds = true
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
}

