//
//  text2.swift
//  SwiftTableView
//
//  Created by apple on 2018/11/8.
//  Copyright © 2018年 apple. All rights reserved.
//

import UIKit

struct  Person{
    enum Address {
        case success(String)
        case failture(Int)
    }
    func changeAddress(address : Address) {
        switch address {
        case .success(let value):
            print(value)
            break
        case .failture(let age):
            print(age)
            break
        default:
            break
        }
    }
}

class text2: UIView {
    
    class func size(bb b:(String)->(),aa a : @escaping (String)->()) ->(){
        var block = ((String)->()).self
        b("ddd")
        a("aaa")
        
//        return a(b)
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
