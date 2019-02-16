//
//  EditExerciseViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2019/02/11.
//  Copyright © 2019 TasukuKubo. All rights reserved.
//

import UIKit
import Foundation


class EditExerciseViewController: UIViewController {
    //let dateFormatter = DateFormatter()
    @IBOutlet weak var ExTextField: UITextField!
    
    @IBOutlet weak var DateTextField: UITextField!
    
    @IBOutlet weak var DetailTextField: UITextView!
    
    @IBAction func testUISwitch(sender: UISwitch) {
        if ( sender.isOn ){
            subjects[selected].ex[selected2].fin=true
        } else if( !sender.isOn) {
            subjects[selected].ex[selected2].fin=false
        }
        
    }
    
    @IBAction func ExEditButton(_ sender: Any) {
        //   dateFormatter.dateFormat = "yyyy-MM-dd"
    subjects[selected].ex[selected2].name_e=ExTextField.text!
        
    subjects[selected].ex[selected2].detail=DetailTextField.text!
    subjects[selected].ex[selected2].date=DateTextField.text!
        
        
        //追加ボタンを押したらフィールドを空にする
        ExTextField.text = ""
        DateTextField.text = ""
        DetailTextField.text = ""
    }
    
    
    override func viewDidLoad() {
            ExTextField.text = subjects[selected].ex[selected2].name_e
            DateTextField.text = subjects[selected].ex[selected2].date
            DetailTextField.text = subjects[selected].ex[selected2].detail
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_DetailTextField: UITextField) -> Bool {
        ExTextField.resignFirstResponder()
        DateTextField.resignFirstResponder()
        DetailTextField.resignFirstResponder()
        return true
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
