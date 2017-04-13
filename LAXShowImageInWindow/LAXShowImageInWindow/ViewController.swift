//
//  ViewController.swift
//  LAXShowImageInWindow
//
//  Created by 冰凉的枷锁 on 2017/4/8.
//  Copyright © 2017年 冰凉的枷锁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageView = UIImageView.init(frame: CGRect.init(x: 50, y: 50, width: 250, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage.init(named: "image")
        self.view.addSubview(imageView)
        
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(self.tapAction)))
    }
    
    func tapAction() {
        imageView.showBigImageInWindow()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

