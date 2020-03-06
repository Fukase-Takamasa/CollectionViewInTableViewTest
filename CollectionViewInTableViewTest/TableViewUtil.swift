//
//  TableViewUtil.swift
//  CollectionViewInTableViewTest
//
//  Created by 深瀬 貴将 on 2020/03/06.
//  Copyright © 2020 深瀬 貴将. All rights reserved.
//

import Foundation
import UIKit

open class TableViewUtil {
    
    static func registerCell(_ tableView: UITableView ,identifier: String) {
        tableView.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
    
    static func createCell(_ tableView: UITableView ,identifier: String, _ indexPath: IndexPath) -> (UITableViewCell) {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        return cell
    }
    
    
    /// sectionHeader / sectionFooterのregisterを簡略化する関数
    /// - Parameters:
    ///   - tableView: 関数を使用するVCのtableView
    ///   - identifier: 登録するXibファイルのStoryboard上で設定したidentifier（String型）"で囲む"
    static func registerSectionHeaderFooter(_ tableView: UITableView, identifier: String) {
        let sectionHeader = UINib(nibName: identifier, bundle: nil)
        tableView.register(sectionHeader, forHeaderFooterViewReuseIdentifier: identifier)
    }
}
