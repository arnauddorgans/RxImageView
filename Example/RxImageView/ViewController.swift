//
//  ViewController.swift
//  RxImageView
//
//  Created by Arnoymous on 08/29/2017.
//  Copyright (c) 2017 Arnoymous. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxImageView
import PureLayout

class ViewController: UIViewController {
    
    let imageView = UIImageView()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewEdges()
        
        setupRx()
    }
    
    func setupRx() {
        
        Observable<Int>.interval(2, scheduler: MainScheduler.instance)
            .map{ URL(string: "https://lorempixel.com/400/200/cats/?\($0)=\($0)") }
            .bind(to: imageView.rx.imageURL)
            .disposed(by: disposeBag)
    }
}
