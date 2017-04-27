//
//  ZZMessageViewController.swift
//  ZZScanQRcode
//
//  Created by zhangzheng on 17/4/26.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

import UIKit

class ZZMessageViewController: UIViewController {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        let webView = UIWebView(frame: CGRect.init(x: 0, y: 64, width: width, height: height - 64))
        
        if data.contains("www") {
            webView.loadRequest(URLRequest.init(url: URL.init(string: data)!))
        } else {
            webView.loadHTMLString(data, baseURL: nil)
        }
        webView.isOpaque = false
        
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
