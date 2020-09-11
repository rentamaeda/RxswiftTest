//
//  ViewController.swift
//  RxswiftTest
//
//  Created by user on 2020/09/11.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class ViewController: UIViewController {
    
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var favCountLabel: UILabel!
    
    private var favCount = 0
    private let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //rx.tap ボタンがタップされたら通知
        favButton.rx.tap
            //subscribe　 favButton.rx.tapされたら呼ばれる
            //onNextイベントがあるたび呼ばれる
            .subscribe(onNext: {[unowned self] _ in
                self.favCount += 1
                self.favCountLabel.text = String(self.favCount)
            })
            .disposed(by: disposeBag)
        
    }
    
    
}

