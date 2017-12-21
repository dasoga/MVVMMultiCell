//
//  ViewController.swift
//  MultipleCellsExample
//
//  Created by Dante Solorio on 12/21/17.
//  Copyright © 2017 Swipe Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dynamicTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    fileprivate let viewModel = ProfileViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        dynamicTable.dataSource = viewModel
        
        dynamicTable.estimatedRowHeight = 100
        dynamicTable.rowHeight = UITableViewAutomaticDimension
        
        dynamicTable.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
        dynamicTable.register(NamePictureCell.nib, forCellReuseIdentifier: NamePictureCell.identifier)
        dynamicTable.register(FriendCell.nib, forCellReuseIdentifier: FriendCell.identifier)
        dynamicTable.register(AttributeCell.nib, forCellReuseIdentifier: AttributeCell.identifier)
        dynamicTable.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
    }

    private func setupView(){
        view.addSubview(dynamicTable)
        dynamicTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        dynamicTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        dynamicTable.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        dynamicTable.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }    
}

