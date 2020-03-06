//
//  TableViewCell.swift
//  CollectionViewInTableViewTest
//
//  Created by 深瀬 貴将 on 2020/03/06.
//  Copyright © 2020 深瀬 貴将. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

class TableViewCell: UITableViewCell, Reusable {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        
        CollectionViewUtil.registerCell(collectionView, identifier: CollectionViewCell.reusableIdentifier)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewUtil.createCell(collectionView, identifier: CollectionViewCell.reusableIdentifier, indexPath)
        return cell
    }
    
    
}
