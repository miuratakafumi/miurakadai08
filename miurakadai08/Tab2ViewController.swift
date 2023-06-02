//
//  Tab2ViewController.swift
//  miurakadai08
//
//  Created by 三浦貴文 on 2023/05/30.
//

import UIKit

class Tab2ViewController: UIViewController {
    // ラベルを配置
    @IBOutlet private weak var tab2Label: UILabel!
    // スライダーを配置
    @IBOutlet private weak var tab2Slider: UISlider!
    
    // スライダーの値を変更するメソッド
    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        // データモデルクラスのスライダープロパティの値を更新
        DataModel.shared.sliderValue = sender.value
        // ラベルにスライダーの値を表示
        tab2Label.text = String(tab2Slider.value)
    }
    
    // ビュー切り替え時のメソッド
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // スライダーの値を更新
        tab2Slider.value = DataModel.shared.sliderValue
        // ラベルにスライダーの値を表示
        tab2Label.text = String(tab2Slider.value)
    }
}
