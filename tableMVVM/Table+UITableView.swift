//
//  Table+UITableView.swift
//  tableMVVM
//
//  Created by Felix Zubarev on 07/11/2018.
//  Copyright © 2018 Felix Zubarev. All rights reserved.
//

import UIKit

extension UITableView {
    
    /// Dequeues a cell for model
    ///
    /// - Parameters:
    ///   - model: model of cell to be dequeued
    ///   - indexPath: index path of cell
    /// - Returns: cell for model and index path
    func dequeueReusableCell(withModel model: ViewAnyModel, for indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: type(of: model).viewAnyType)
        let cell = self.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        model.setupAny(view: cell)
        return cell
    }
    
    /// Registers nibModels
    ///
    /// - Parameter nibModels: Models to be registered
    func register(nibModels: [ViewAnyModel.Type]) {
        for model in nibModels {
            let identifier = String(describing: model.viewAnyType)
            let nib = UINib(nibName: identifier, bundle: nil)
            self.register(nib, forCellReuseIdentifier: identifier)
        }
    }
    
}
