//
//  ParentTableViewCell.swift
//  Demo2Table1VC
//
//  Created by Thieu Mao on 5/28/17.
//  Copyright © 2017 Hay Nhanh. All rights reserved.
//

import UIKit

class ParentTableViewCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    static let identifier = "ParentTableViewCell"
    @IBOutlet weak var childTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.childTableView.delegate = self
        self.childTableView.dataSource = self
        self.childTableView.register(UINib(nibName: "ChildTableViewCell", bundle: nil),
                forCellReuseIdentifier: ChildTableViewCell.identifier)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ChildTableViewCell.identifier,
            for: indexPath) as? ChildTableViewCell else {
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
