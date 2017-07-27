//
//  EditDataVC.swift
//  tabletest
//
//  Created by aldb on 7/24/17.
//  Copyright © 2017 aldb. All rights reserved.
//

import UIKit

class EditDataVC: UIViewController {
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NAME")
        print(name)
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: false, completion: nil);
    }

}
