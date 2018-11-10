//
//  SubjectViewController.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/10.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

import UIKit

class SubjectViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Title)
        label.text=Title

        // Do any additional setup after loading the view.
    }
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
