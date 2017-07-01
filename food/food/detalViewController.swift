//
//  detalViewController.swift
//  food
//
//  Created by Asa on 2017/7/1.
//  Copyright © 2017年 Asa. All rights reserved.
//

import UIKit

class detalViewController: UIViewController {
    
    var name:String!
    
    @IBOutlet weak var foodimage: UIImageView!
    @IBOutlet weak var foodname: UITextField!
    @IBOutlet weak var foodmake: UITextField!
    @IBOutlet weak var foodgood: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = name
        let url = Bundle.main.url(forResource: name, withExtension: "txt")
        let content = try?String(contentsOf:url!)
        let array = content!.components(separatedBy: "\n")
        let line = array[0]
        let dataArray = line.components(separatedBy: "\t")
        
        if name == "可樂果" {
            foodimage.image = UIImage(named: "001")
            foodname.text = dataArray[0]
            foodmake.text = dataArray[1]
            foodgood.text = dataArray[2]
        }
        else if name == "真魷味" {
            foodimage.image = UIImage(named: "002")
            foodname.text = dataArray[0]
            foodmake.text = dataArray[1]
            foodgood.text = dataArray[2]
        }
        else if name == "蝦味先" {
            foodimage.image = UIImage(named: "003")
            foodname.text = dataArray[0]
            foodmake.text = dataArray[1]
            foodgood.text = dataArray[2]
        }
        else {
            foodimage.image = UIImage(named: "004")
            foodname.text = dataArray[0]
            foodmake.text = dataArray[1]
            foodgood.text = dataArray[2]
        }
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
