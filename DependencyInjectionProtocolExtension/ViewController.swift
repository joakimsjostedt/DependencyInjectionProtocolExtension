//
//  ViewController.swift
//  testillitest
//
//  Created by Joakim Sjöstedt on 2020-03-23.
//  Copyright © 2020 Joakim Sjöstedt. All rights reserved.
//

import UIKit

class BaseClass {
    
    var myString: String = "All the way from the back!"
}

class InheritingClass: BaseClass {
    
    func inheritingFuntion() {
        print(myString)
    }
}

protocol InjectionProtocol {
    var instance: InheritingClass { get }
}

extension InjectionProtocol {
    var instance: InheritingClass {
        return InheritingClass()
    }
}

class ViewController: UIViewController, InjectionProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        instance.inheritingFuntion()

    }
}

