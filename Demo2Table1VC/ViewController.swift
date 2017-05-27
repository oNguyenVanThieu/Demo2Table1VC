//
//  ViewController.swift
//  Demo2Table1VC
//
//  Created by Thieu Mao on 5/28/17.
//  Copyright © 2017 Hay Nhanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var parentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.parentTableView.delegate = self
        self.parentTableView.dataSource = self
        self.parentTableView.register(UINib(nibName: "ParentTableViewCell", bundle: nil),
            forCellReuseIdentifier: ParentTableViewCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ParentTableViewCell.identifier,
            for: indexPath) as? ParentTableViewCell else {
                return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

}

