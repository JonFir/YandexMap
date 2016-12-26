//
//  YandexMap.swift
//  YandexMap
//
//  Created by rsi-pc on 26.12.16.
//  Copyright © 2016 pinspb. All rights reserved.
//

import UIKit

class YandexMap: UIWebView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var htmlPage: String{
        if let filepath = Bundle.main.path(forResource: "MapPage", ofType: "html") {
            do {
                let contents = try String(contentsOfFile: filepath)
                return contents
            } catch {
                return ""
            }
        } else {
            return ""
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMap()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupMap()
    }
    
    
    fileprivate func setupMap(){
        self.loadHTMLString(htmlPage, baseURL: nil)
    }

}
