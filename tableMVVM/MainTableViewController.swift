//
//  MainTableViewController.swift
//  tableMVVM
//
//  Created by Felix Zubarev on 07/11/2018.
//  Copyright © 2018 Felix Zubarev. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    enum SectionType {
        case title
    }
    
    private var sections: [SectionType] {
        return [.title]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(nibModels: [TitleTableViewCellModel.self])
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model: ViewAnyModel
        
        switch sections[indexPath.section] {
        case .title: model = TitleTableViewCellModel.init(text: "This is \(indexPath.row) row")
        }
        
        return tableView.dequeueReusableCell(withModel: model, for: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
