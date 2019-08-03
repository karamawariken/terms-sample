//
//  ViewController.swift
//  terms-sample
//
//  Created by nishi kosei on 2019/08/02.
//  Copyright © 2019 nishi kosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// 利用規約ボタンUI
    @IBOutlet weak var consentButton1: UIButton!
    @IBOutlet weak var consentButton2: UIButton!
    
    //次に進むボタンUI
    @IBOutlet weak var nextPageButton: UIButton!
    
    private let checkedImage = UIImage(named: "check_on")
    private let uncheckedImage = UIImage(named: "check_off")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        /// Button1の設定
        self.consentButton1.setImage(uncheckedImage, for: .normal)
        self.consentButton1.setImage(checkedImage, for: .selected)
        
        /// Button2の設定
        self.consentButton2.setImage(uncheckedImage, for: .normal)
        self.consentButton2.setImage(checkedImage, for: .selected)
        
        checkNextButtonenable()
    }

    @IBAction func consentButton1DidTap(_ sender: Any) {
        /// 選択状態を反転させる
        self.consentButton1.isSelected = !self.consentButton1.isSelected
        checkNextButtonenable()
    }
    
    @IBAction func consentButton2DidTap(_ sender: Any) {
        /// 選択状態を反転させる
        self.consentButton2.isSelected = !self.consentButton2.isSelected
        checkNextButtonenable()
    }
    
    func checkNextButtonenable(){
        /// どちらも同意チェック済みか判断する
        if (self.consentButton1.isSelected && self.consentButton2.isSelected){
            self.nextPageButton.tintColor = UIColor.white
            self.nextPageButton.layer.cornerRadius = 5
            self.nextPageButton.layer.borderWidth = 1
            self.nextPageButton.layer.backgroundColor = UIColor.blue.cgColor
        } else {
            self.nextPageButton.tintColor = UIColor.white
            self.nextPageButton.layer.cornerRadius = 5
            self.nextPageButton.layer.borderWidth = 1
            self.nextPageButton.layer.backgroundColor = UIColor.gray.cgColor

        }
    }
    
    @IBAction func nextPageButtonDidTap(_ sender: Any) {
        /// どちらも同意チェック済みの場合のみアクションさせる
        if(self.consentButton1.isSelected && self.consentButton2.isSelected){
            print("次に進めます")
        }
    }
}

