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
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        var contentwidth: CGFloat = 0.0
        var newx :CGFloat = 0.0
        // Do any additional setup after loading the view, typically from a nib.
        
        
        for x in 0 ... 2{
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
            
            
            newx = scrollview.frame.size.width/2 + scrollview.frame.size.width * CGFloat(x)
            
            contentwidth += newx
            
            scrollview.addSubview(imageView)
            
            imageView.frame = CGRect(x: newx - 75, y: scrollview.frame.size.height/2 - 75, width: 150, height: 150)
            
            
            
            
        }
        
        scrollview.contentSize = CGSize(width: newx + scrollview.frame.size.width/2 , height: scrollview.frame.size.height)
        
        scrollview.clipsToBounds = false
        
        
        
        print("Count: \(images.count)")
        
        print("width: \(contentwidth)")
        
        print("width: \(scrollview.frame.size.width)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

