//
//  ViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/08.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit

class ViewController : UIViewController,UITableViewDelegate,UITableViewDataSource{
    //UITableView、numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return Subject.count
    }
    
    
    //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell :UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = Subject[indexPath.row]
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let index = indexPath.row
        Subject.remove(at: index) //ここでエラーが発生しました
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Title=Subject[indexPath.row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Subject = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
