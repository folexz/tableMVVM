//
//  TitleTableViewCell.swift
//  tableMVVM
//
//  Created by Felix Zubarev on 07/11/2018.
//  Copyright © 2018 Felix Zubarev. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel! {
        didSet {
            label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        }
    }
    
}
