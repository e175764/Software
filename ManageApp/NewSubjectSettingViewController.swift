//
//  NewSubjectSettingViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/08.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit

var Subject = [String]()
var Title = "title"
class NewSubjectSettingViewController: UIViewController {
   
    @IBOutlet weak var TodoTextField: UITextField!

    @IBAction func TodoAddButtom(_ sender: Any) {
        //変数に入力内容を入れる
        Subject.append(TodoTextField.text!)
        Title=TodoTextField.text!;
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set( Subject, forKey: "TodoList" )
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
