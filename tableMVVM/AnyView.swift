//
//  AnyView.swift
//  tableMVVM
//
//  Created by Felix Zubarev on 07/11/2018.
//  Copyright © 2018 Felix Zubarev. All rights reserved.
//

import UIKit

protocol ViewAnyModel {
    
    /// Type
    static var viewAnyType: UIView.Type { get }
    
    /// Setup
    ///
    /// - Parameter view: Any view to setup
    func setupAny(view: UIView)
}

///Protocol to setup
protocol ViewModel: ViewAnyModel {
    associatedtype ViewType: UIView
    
    /// Setup
    ///
    /// - Parameter view: View to setup
    func setup(view: ViewType)
}

extension ViewModel {
    static var viewAnyType: UIView.Type {
        return ViewType.self
    }
    func setupAny(view: UIView) {
        setup(view: view as! ViewType)
    }
}

