//
//  TitleTableViewCellModel.swift
//  tableMVVM
//
//  Created by Felix Zubarev on 07/11/2018.
//  Copyright © 2018 Felix Zubarev. All rights reserved.
//

import UIKit

struct TitleTableViewCellModel: ViewModel {
    
    let text: String
    
    func setup(view: TitleTableViewCell) {
        view.label.text = text
    }
    
}
