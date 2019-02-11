//
//  BaseCharts.swift
//  ManageApp
//
//  Created by Tasuku Kubo on 2018/11/19.
//  Copyright © 2018 TasukuKubo. All rights reserved.
//

var done = Double()
var undone = Double()
import UIKit
import Charts
class BaseCharts: UIViewController {
    var chart: PieChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateChartData()
        
    }
    //グラフの表示データの取得
    func updateChartData()  {
        done = 0//完了の課題
        undone = 0//未完了の課題
        for i in stride(from:0,to:subjects[selected].ex.count,by:1){
            if(subjects[selected].ex[i].fin){
                done+=1.0
            }else{
                undone+=1.0
            }
        }

        let chart=PieChartView(frame: CGRect(x: 30, y: 0, width: 300 , height: 300))
        // 2. generate chart data entries
        let track=["Done","Undone"]
        let money=[done,undone]
        //let track = ["Income", "Expense", "Wallet", "Bank"]
        //let money = [650, 300, 78.67, 856.52*/]
        
        var entries = [PieChartDataEntry]()
        for (index, value) in money.enumerated() {
            let entry = PieChartDataEntry()
            entry.y = value
            entry.label = track[index]
            entries.append( entry)
        }
        
        // 図の設定を行う(色やラベル)
        let set = PieChartDataSet( values: entries, label: "Exercise")
        // this is custom extension method. Download the code for more details.
        var colors: [UIColor] = []
        
        for _ in 0..<money.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        set.colors = colors
        let data = PieChartData(dataSet: set)
        chart.data = data
        chart.noDataText = "No data available"
        // user interaction
        chart.isUserInteractionEnabled = true
        
        let d = Description()
        d.text = "iOSCharts.io"
        chart.chartDescription = d
        chart.centerText = "Exercise"
        chart.holeRadiusPercent = 0.2
        chart.transparentCircleColor = UIColor.clear
        self.view.addSubview(chart)
        
    }
    
}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


