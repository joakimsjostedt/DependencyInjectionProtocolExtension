//
//  ViewController.swift
//  TestingProtocols
//
//  Created by Joakim Sjöstedt on 2020-04-02.
//  Copyright © 2020 Joakim Sjöstedt. All rights reserved.
//

import UIKit

class BaseClass {
    var baseString: String = "All the way from the back!"
}

protocol AnotherClassProtocol {
    func anotherFunc()
}

class AnotherClass: BaseClass, AnotherClassProtocol {
    func anotherFunc() {
        print(baseString)
    }
}

protocol MyProtocol {
    var instance: AnotherClassProtocol { get }
}

extension MyProtocol {
    var instance: AnotherClassProtocol { return AnotherClass() }
}

class ViewController: UIViewController, MyProtocol {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        instance.anotherFunc()
    }
}

