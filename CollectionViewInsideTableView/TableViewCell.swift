//
//  TableViewCell.swift
//  CollectionViewInsideTableView
//
//  Created by Sriram Prasad on 29/10/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
