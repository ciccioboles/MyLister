//
//  MainVC.swift
//  MyList
//
//  Created by David Boles on 1/21/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.name
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Do the laundry"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Get a hair cut"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Feed the baby"
        task3.important = false
        
        return [task1,task2,task3]
        
    }
    
    
}
