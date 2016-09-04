//
//  showPoster.swift
//  MovieCollectionCoreData
//
//  Created by Shweta Murthy on 4/5/16.
//  Copyright © 2016 Shweta Murthy. All rights reserved.
//

import Foundation
import UIKit


class showPoster: UIViewController{
    @IBOutlet weak var myWebView: UIWebView!
    var url: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSLog(url )
        if(url.containsString("N/A")){
            let urlActual = NSURL (string: "http://huwshimi.com/404/");
            let requestObj = NSURLRequest(URL: urlActual!);
            myWebView.loadRequest(requestObj)
        }
        else{
            let urlActual = NSURL (string: url);
            let requestObj = NSURLRequest(URL: urlActual!);
            myWebView.loadRequest(requestObj);}
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
