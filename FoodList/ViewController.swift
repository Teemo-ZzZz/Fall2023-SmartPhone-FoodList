//
//  ViewController.swift
//  FoodList
//
//  Created by Teemo on 10/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let imageNames = ["Chinese","Indian","Italian","Japanese","Korean","French"]
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImgTableViewCell
        
        cell.imgView.image = UIImage(named: imageNames[indexPath.row])
        cell.lblView.text = imageNames[indexPath.row]
        return cell
    }

}

