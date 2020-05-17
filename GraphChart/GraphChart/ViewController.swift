//
//  ViewController.swift
//  GraphChart
//
//  Created by AL Mustakim on 17/5/20.
//  Copyright © 2020 AL Mustakim. All rights reserved.
//

import UIKit
import SwiftChart

class ViewController: UIViewController {

    @IBOutlet weak var graphView: Chart!
    let data: [Double] = [35.92, 34.3, 31.76, 60, 27.58, 26.43]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let labelsAsString = ["" ,"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", ""]
        
        //let labelsAsString = ["1" ,"2", "3", "4", "5", "6"]
        
        let series = ChartSeries(data)
        series.colors = (
            above: ChartColors.purpleColor(),
            below: ChartColors.orangeColor(),
            zeroLevel: 26.43
        )
        series.line = true
        series.area = true
        //series.data = [(x: 10, y: 10)]
        graphView.add(series)
        print("###",data)
        // Set minimum and maximum values for y-axis
        graphView.minY = 26.43
        graphView.maxY = 35.92

        // Format y-axis, e.g. with units
        graphView.yLabelsFormatter = { String(Int($1)) + " ºC" }
        
        
        graphView.xLabelsFormatter = { (labelIndex: Int, labelValue: Double) -> String in

            return labelsAsString[labelIndex]
        }

        
    }


}

