//
//  ViewController.swift
//  Scrolview
//
//  Created by ChengLog G on 28/1/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    var images = [UIImageView]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for x in 0 ... 2{
        let image = UIImage(named: "icon\(x).png")
        let imageView = UIImageView(image:image)
            images.append(imageView)
            
            var newx :CGFloat = 0.0
            
            
            newx = view.frame.midX + view.frame.size.width * CGFloat(x)
            
            scrollview.addSubview(imageView)
            
            imageView.frame = CGRect(x: 0, y: view.frame.size.height/2, width: 150, height: 150)
            
            
            
            
        }
        
        print("Count: \(images.count)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

