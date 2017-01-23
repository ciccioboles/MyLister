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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        taskLabel.text = task.name
    
    
    
    }
    @IBAction func completeTapped(_ sender: Any) {
    }

   

}
