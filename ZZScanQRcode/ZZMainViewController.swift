//
//  ZZMainViewController.swift
//  ZZScanQRcode
//
//  Created by zhangzheng on 17/4/26.
//  Copyright © 2017年 zhangzheng. All rights reserved.
//

import UIKit

class ZZMainViewController: UIViewController {

    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "扫描二维码"
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect.init(x: 0, y: height/2 - 20, width: width, height: 40))
        
        label.text = "点击屏幕开始扫描"
        label.textAlignment = .center
        label.textColor = UIColor.black
        
        let imageView = UIImageView(frame: CGRect.init(x: width/2 - 30, y: label.frame.origin.y - 80, width: 60, height: 60))
        
        imageView.image = UIImage.init(named: "scanQR.PNG")
        
        self.view.addSubview(imageView)
        self.view.addSubview(label)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let scanQRCodeVC = ZZScanQRCodeViewController()
        
        self.navigationController?.pushViewController(scanQRCodeVC, animated: true)
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
