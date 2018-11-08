//
//  ViewController.swift
//  SwiftTableView
//
//  Created by apple on 2018/5/15.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text2.size(bb: { (b) in
            
        }) { (c) in
            
        }
        let add : (_ a :Int,_ b :Int)->Int = {
            (a,b) in
            return a+b
        }
       let r = add(2,3)
        print(r)
        
        textCloture(test1: { (test1) in
            print(test1)
        }, test2: {(test2) in
            print(test2)
        })
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView .setEditing(true, animated: true)
        
    }
    
    func textCloture(test1 test1:(String)->(),test2 test2:@escaping(String)->()) -> Void {
        test1("test1")
        DispatchQueue.global().async {
            DispatchQueue.main.async {
//                test1("test11")
                test2("test2")
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = "cell text"
        cell.detailTextLabel?.text = "cell subtitle"
        cell.imageView?.image = UIImage.init(named: "image1.png")
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "head"
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "footer"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        print("\(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        print(sourceIndexPath.row,destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
        print("2")
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        print("22")
    }
    
}

