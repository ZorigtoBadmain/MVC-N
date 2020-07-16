//
//  ViewController.swift
//  MVC-N
//
//  Created by Зоригто Бадмаин on 16.07.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

}

extension CommentsViewController: UITableViewDelegate {}

extension CommentsViewController: UITableViewDataSource {}

