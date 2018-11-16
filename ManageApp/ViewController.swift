//
//  ViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/08.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit
var selected:Int=0
class ViewController : UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return subjects.count
    }
    
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell :UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = subjects[indexPath.row].name_s
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    
    //任意セルの削除処理
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let index = indexPath.row
        subjects.remove(at: index)
        tableView.reloadData()
    }
    
    //選択されたcell情報の取得
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Title=subjects[indexPath.row].name_s
        selected=indexPath.row
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

/*
        if UserDefaults.standard.object(forKey: "Subject") != nil {

            for subject in subjects{
                NameOfSubject.append(subject.name_s)
            }
            subjects = UserDefaults.standard.object(forKey: "Subject") as! [Subject]

        }
 */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
