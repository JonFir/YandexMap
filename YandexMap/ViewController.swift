//
//  ViewController.swift
//  YandexMap
//
//  Created by rsi-pc on 26.12.16.
//  Copyright © 2016 pinspb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yandexMap: YandexMap!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testBupptonPressed(_ sender: Any) {
        yandexMap.stringByEvaluatingJavaScript(from: "myMap.setCenter([56.025021, 92.816839], 9);")
    }

}

