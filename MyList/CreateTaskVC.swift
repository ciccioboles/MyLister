//
//  CreateTaskVC.swift
//  MyList
//
//  Created by David Boles on 1/22/17.
//  Copyright © 2017 David Boles. All rights reserved.
//

import UIKit

class CreateTaskVC: UIViewController {

    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }//

    
    
    @IBAction func addTapped(_ sender: Any) {
        
        //create new task from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //add new task to previous VC
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)


    }
   

}//
