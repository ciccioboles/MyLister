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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }//

    
    
    @IBAction func addTapped(_ sender: Any) {
        
        //create new task from the outlet information
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //pop back
        navigationController!.popViewController(animated: true)


    }
   

}//
