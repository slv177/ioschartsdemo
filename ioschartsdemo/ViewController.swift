//
//  ViewController.swift
//  ioschartsdemo
//
//  Created by SS on 06/03/2018.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Выполнение заявок, 12 нед."
        
        
        months = ["Пн.", "Вт.", "Ср.", "Чт.", "Пт.", "Сб.", " Вс."] //, "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        setChart(dataPoints: months, values: unitsSold)
        
    }

    var months: [String]!
    
    func setChart (dataPoints: [String], values:[Double]) {
        barChartView.noDataText = "You need some data."
        
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Количество заявок, шт.")
        let chartData = BarChartData(dataSet: chartDataSet)
        barChartView.data = chartData
    }
    
    
    
    
    @IBOutlet weak var barChartView: BarChartView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

