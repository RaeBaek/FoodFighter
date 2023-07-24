//
//  BaeminViewController.swift
//  FoodFighter
//
//  Created by 백래훈 on 2023/07/22.
//

import UIKit

class BaeminViewController: UIViewController {
    
    @IBOutlet var locationButton: UIButton!
    @IBOutlet var topTwoButton: [UIButton]!
    @IBOutlet var hashTagButtons: [UIButton]!
    @IBOutlet var mainButtonViews: [UIView]!
    
    @IBOutlet var mainButtonImages: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designTopButton()
        designHashTagButton()
        designMainButton()
    }
    
    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func keyboardReturnButtonTapped(_ sender: UITextField) {
        view.endEditing(true)
    }
    
    func designTopButton() {
        locationButton.setTitle("우리집", for: .normal)
        locationButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        locationButton.setImage(UIImage(systemName: "chevron.down.circle"), for: .normal)
        locationButton.tintColor = .white
        
        topTwoButton[0].setImage(UIImage(named: "메뉴아이콘")?.withRenderingMode(.alwaysOriginal), for: .normal)
        topTwoButton[0].contentMode = .scaleAspectFill
        topTwoButton[0].setTitle("", for: .normal)
        
        topTwoButton[1].setImage(UIImage(named: "알림아이콘")?.withRenderingMode(.alwaysOriginal), for: .normal)
        topTwoButton[1].contentMode = .scaleAspectFill
        topTwoButton[1].setTitle("", for: .normal)
    }
    
    func designHashTagButton() {
        /*
        var config = UIButton.Configuration.plain()
        config.titlePadding = 20
        
        let attributedTitle = NSAttributedString(
            string: "재주문 많아요오오오",
            attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .semibold),
                         NSAttributedString.Key.foregroundColor: UIColor.black])
         */
        for i in 0..<hashTagButtons.count {
            hashTagButtons[i].layer.cornerRadius = 15
            hashTagButtons[i].layer.borderColor = UIColor(red: 95.0/255.0, green: 190.0/255.0, blue: 187.0/255.0, alpha: 1.0).cgColor
            hashTagButtons[i].layer.borderWidth = 1
        }
    }
    
    func designMainButton() {
        for i in 0..<mainButtonViews.count {
            mainButtonViews[i].layer.shadowColor = UIColor.black.cgColor
                    // 햇빛이 비추는 위치
            mainButtonViews[i].layer.shadowOffset = .zero //CGSize(width: 0, height: 0)
                    // 섀도우 퍼짐의 정도
            mainButtonViews[i].layer.shadowRadius = 5
                    // 섀도우 불투명도
            mainButtonViews[i].layer.shadowOpacity = 0.3
            mainButtonViews[i].layer.cornerRadius = 15
            
            mainButtonImages[i].layer.cornerRadius = 15
        }
    }
}
