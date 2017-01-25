//
//  CompleteTaskVC.swift
//  MyList
//
//  Created by David Boles on 1/23/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class CompleteTaskVC: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    var previousVC = TasksVC()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    
    
    }
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

   

}
