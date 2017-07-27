//
//  EditDataVC.swift
//  tabletest
//
//  Created by aldb on 7/24/17.
//  Copyright © 2017 aldb. All rights reserved.
//

import UIKit

class EditDataVC: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    var data = [Student]()
    var path = ""
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.text = data[index].Name
        txtLastName.text = data[index].LastName
    }
    @IBAction func editData(_ sender: Any) {
    }
    
    @IBAction func commitChange(_ sender: Any) {
    }
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: false, completion: nil);
    }

}
