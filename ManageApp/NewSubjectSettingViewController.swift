//
//  NewSubjectSettingViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/08.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit


//課題のクラス
class Exercise{

    var name_e:String//課題名
    var detail:String //課題詳細
    var fin:Bool //完了かどうか
    var date:String //締切日
    
    
    init(name_e:String,detail:String,fin:Bool,date:String){
        self.name_e = name_e
        self.detail=detail
        self.fin=fin
        self.date=date
    }
 
}

//科目のクラス
class Subject {
    var name_s:String //科目名
    var ex:[Exercise] //課題一覧
    
    init(name_s:String,ex:[Exercise]){
        self.name_s = name_s
        self.ex = ex
    }
}
//全体に必要なクラスここまで

//インスタンス生成:内部処理に必要なデータを扱う
var subjects=[Subject]()
var exercises=[Exercise]()
var Title = "title"
class NewSubjectSettingViewController: UIViewController {
    let userDefault = UserDefaults.standard
    @IBOutlet weak var TodoTextField: UITextField!
    //textFieldで入力された情報の保存
    @IBAction func TodoAddButtom(_ sender: Any) {
        //変数に入力内容を入れる
        subjects.append(Subject(name_s:TodoTextField.text!,ex:exercises))
        Title=TodoTextField.text!;
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        //変数の中身をUDに追加:アプリ終了後の値の保持
        /*
        userDefault.archive(key: "Subject",value: subjects.count])
        */
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
