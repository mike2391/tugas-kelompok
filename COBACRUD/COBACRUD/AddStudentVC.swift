//
//  AddStudentVC.swift
//  COBACRUD
//
//  Created by prk on 10/01/23.
//

import UIKit

class AddStudentVC: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtStd: UITextField!
    @IBOutlet weak var txtSchool: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    

    @IBAction func onCickAdd(_ sender: Any) {
        if let name = txtName.text, let std  = txtStd.text, let school = txtSchool.text{
            let newStudent = Student(context: DBManager.share.context)
            newStudent.name = name
            newStudent.std = std
            newStudent.school = school
            
            DBManager.share.saveContext()
        }
    }


}
