//
//  ViewController.swift
//  TableView
//
//  Created by Quang Thanh on 15/09/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var table: UITableView!
    
    struct restaurant {
        let title: String
        let imageName: String
      
    }
    let data: [restaurant] = [
        restaurant(title: "Little Creatures - Club Street", imageName: "food1"),
        restaurant(title: "Yanti Nasi Padang", imageName: "food2"),
        restaurant(title: "Tiong Bahru Bakery", imageName: "food3"),
        restaurant(title: "Kitchen by Food Rebel" , imageName: "food4"),
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
        return 129 
    }
}


extension UIView {
  
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return layer.cornerRadius
    }
    set {
      layer.cornerRadius = newValue
    }
  }
  
  @IBInspectable var masksToBounds: Bool {
    get {
      return layer.masksToBounds
    }
    set {
      layer.masksToBounds = newValue
    }
  }
  
  @IBInspectable var borderWidth: CGFloat {
    get {
      return layer.borderWidth
    }
    set {
      layer.borderWidth = newValue
    }
  }
  
  @IBInspectable var borderColor: UIColor? {
    get {
      return UIColor(cgColor: layer.borderColor ?? UIColor.clear.cgColor)
    }
    set {
      layer.borderColor = newValue?.cgColor
    }
  }
  
}







