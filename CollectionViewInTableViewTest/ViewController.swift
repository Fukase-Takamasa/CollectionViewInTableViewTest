//
//  ViewController.swift
//  CollectionViewInTableViewTest
//
//  Created by 深瀬 貴将 on 2020/03/06.
//  Copyright © 2020 深瀬 貴将. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Instantiate
import InstantiateStandard

class ViewController: UIViewController, StoryboardInstantiatable {

    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableViewUtil.registerCell(tableView, identifier: TableViewCell.reusableIdentifier)
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewUtil.createCell(tableView, identifier: TableViewCell.reusableIdentifier, indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
    
    
}

