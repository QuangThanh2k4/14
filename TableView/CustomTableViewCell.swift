//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by Quang Thanh on 15/09/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }

    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var tittleLabel01: UILabel!
    
    }


