//
//  SubjectViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/10.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit
var selected2:Int=0
var Title2 = "title"
//科目ごとの管理を行う
class SubjectViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var label: UILabel!
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //戻り値の設定(表示するcell数)
            return subjects[selected].ex.count
        }
        
    
        //UITableView、cellForRowAtの追加(表示するcellの中身を決める)
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //変数を作る
            let ExCell :UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ExCell", for: indexPath)
            //変数の中身を作る
            ExCell.textLabel!.text = subjects[selected].ex[indexPath.row].name_e
            //戻り値の設定（表示する中身)
            return ExCell
        }

        
        //任意セルの削除処理
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            let index = indexPath.row
            subjects[selected].ex.remove(at: index)
            tableView.reloadData()
        }
        //選択されたcell情報の取得
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            Title2=subjects[selected].ex[indexPath.row].name_e
            selected2=indexPath.row
        }
        override func viewDidLoad() {
        super.viewDidLoad()
        label.text=Title
        
        // Do any additional setup after loading the view.
        }
            // Do any additional setup after loading the view.
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
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
