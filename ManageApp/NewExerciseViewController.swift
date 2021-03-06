//
//  NewExerciseViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/13.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit
import Foundation


class NewExerciseViewController: UIViewController {
    //let dateFormatter = DateFormatter()
    @IBOutlet weak var ExTextField: UITextField!
    
    @IBOutlet weak var DateTextField: UITextField!
    
    @IBOutlet weak var DetailTextField: UITextView!
    
    
    @IBAction func ExAddButton(_ sender: Any) {
    //   dateFormatter.dateFormat = "yyyy-MM-dd"
    
    subjects[selected].ex.append(Exercise(name_e: ExTextField.text!,detail:DetailTextField.text!,fin:false, date:DateTextField.text!))
    
    //追加ボタンを押したらフィールドを空にする
    ExTextField.text = ""
    DateTextField.text = ""
    DetailTextField.text = ""
    //変数の中身をUDに追加:アプリ終了後の値の保持
    /*
     userDefault.archive(key: "Subject",value: subjects.count])
     */
}

    override func viewDidLoad() {
        if subjects[selected].ex.count != 0{
            ExTextField.text = subjects[selected].ex[selected2].name_e
            DateTextField.text = subjects[selected].ex[selected2].date
            DetailTextField.text = subjects[selected].ex[selected2].detail
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
