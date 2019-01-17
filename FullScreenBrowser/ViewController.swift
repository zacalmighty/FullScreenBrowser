//
//  ViewController.swift
//  FullScreenBrowser
//
//  Created by Student on 1/15/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool{
        get {
            return true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //get the siz eof the main window and log it to the console
        let screenSize: CGRect = UIScreen.main.bounds
        
        print("Sreen Width = \(screenSize.width), Screen Height = \(screenSize.height)")
        
        //create web view  - basic web browser
        let webView: WKWebView = WKWebView(frame: screenSize)
        
        webView.load(URLRequest(url: URL(string: "http://www.rit.edu")!))
        
        view.addSubview(webView)
        
    }


}

