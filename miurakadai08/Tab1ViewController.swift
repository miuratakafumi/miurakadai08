//
//  Tab1ViewController.swift
//  miurakadai08
//
//  Created by 三浦貴文 on 2023/05/30.
//

import UIKit

class Tab1ViewController: UIViewController {
    // ラベルを配置
    @IBOutlet private weak var tab1Label: UILabel!
    // スライダーを配置
    @IBOutlet private weak var tab1Slider: UISlider!
    
    // スライダーの初期値を設定し、ラベルに表示
    override func viewDidLoad() {
        super.viewDidLoad()
        tab1Slider.value = 0.0
        tab1Label.text = String(tab1Slider.value)
    }
    
    // スライダーの値を変更するメソッド
    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        // データモデルクラスのスライダープロパティの値を更新
        DataModel.shared.sliderValue = sender.value
        // ラベルにスライダーの値を表示
        tab1Label.text = String(tab1Slider.value)
    }
    
    // ビュー切り替え時のメソッド
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // スライダーの値を更新
        tab1Slider.value = DataModel.shared.sliderValue
        // ラベルにスライダーの値を表示
        tab1Label.text = String(tab1Slider.value)
    }
}
