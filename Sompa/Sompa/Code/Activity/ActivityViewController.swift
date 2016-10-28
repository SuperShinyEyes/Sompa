//
//  ActivityViewController.swift
//  Sompa
//
//  Created by Park Seyoung on 28/10/16.
//  Copyright © 2016 Park Seyoung. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {
    
    var tempLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadLabel(text: "ActivityViewController\n coming soon.")
        // Do any additional setup after loading the view.
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

extension ActivityViewController {
    func loadLabel(text: String) {
        tempLabel = UILabel(
            frame: CGRect(
                origin: CGPoint(
                    x:  view.bounds.minX,
                    y:  view.bounds.midY)
                ,
                size: CGSize(width: view.bounds.width, height: view.bounds.height / 2)
            )
        )
        tempLabel.text = text
        tempLabel.center = CGPoint(x:  view.bounds.midX, y:  view.bounds.midY)
        tempLabel.textAlignment = .center
        tempLabel.textColor = .white
        tempLabel.numberOfLines = 0
        view.addSubview(tempLabel)
    }
}
