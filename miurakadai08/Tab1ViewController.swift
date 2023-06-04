//
//  Tab1ViewController.swift
//  miurakadai08
//
//  Created by 三浦貴文 on 2023/05/30.
//

import UIKit

class Tab1ViewController: UIViewController {
    // ラベルを配置
    @IBOutlet private weak var label: UILabel!
    // スライダーを配置
    @IBOutlet private weak var slider: UISlider!
    
    // スライダーの値を変更するメソッド
    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        // データモデルクラスのスライダープロパティの値を更新
        DataModel.shared.sliderValue = sender.value
        // ラベルにスライダーの値を表示
        label.text = String(slider.value)
    }
    
    // ビュー切り替え時のメソッド
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // スライダーの値を更新
        slider.value = DataModel.shared.sliderValue
        // ラベルにスライダーの値を表示
        label.text = String(slider.value)
    }
}
