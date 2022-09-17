//
//  ViewController.swift
//  TableView
//
//  Created by Quang Thanh on 15/09/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        let title: String
        let imageName: String
      
    }
    let data: [Sunset] = [
        Sunset(title: "Little Creatures - Club Street", imageName: "food1"),
        Sunset(title: "Yanti Nasi Padang", imageName: "food2"),
        Sunset(title: "Tiong Bahru Bakery", imageName: "food3"),
        Sunset(title: "Kitchen by Food Rebel" , imageName: "food4"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        CustomTableViewCell
        cell.tittleLabel01.text = sunset.title
        cell.iconImageView.image = UIImage(named: sunset.imageName)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->
    CGFloat {
        return 140
    }
}






