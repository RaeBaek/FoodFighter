//
//  KakaoTalkViewController.swift
//  FoodFighter
//
//  Created by 백래훈 on 2023/07/22.
//

import UIKit

class KakaoTalkViewController: UIViewController {

    @IBOutlet var backgorundImageView: UIImageView!
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var xbutton: UIButton!
    
    @IBOutlet var topThreeButton: [UIButton]!
    @IBOutlet var bottomSheetImage: [UIImageView]!
    @IBOutlet var bottomSheetLabel: [UILabel]!
    @IBOutlet var bottomThreeButton: [UIButton]!
    
    @IBOutlet var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName()
        designImage()
        designThreeButton()
        designBottomSheet()
    }
    
    func userName() {
        nameLabel.text = "백래훈"
        nameLabel.textColor = .white
        nameLabel.font = .systemFont(ofSize: 20, weight: .semibold)
    }
    
    func designImage() {
        backgorundImageView.image = UIImage(named: "하늘")
        backgorundImageView.contentMode = .scaleAspectFill
        
        profileImageView.image = UIImage(named: "나")
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.layer.cornerRadius = 40
    }
    
    func designThreeButton() {
        xbutton.setImage(UIImage(named: "엑스마크")?.withRenderingMode(.alwaysOriginal), for: .normal)
        xbutton.contentMode = .scaleToFill
        
        topThreeButton[0].setImage(UIImage(named: "선물하기")?.withRenderingMode(.alwaysOriginal), for: .normal)
        topThreeButton[0].contentMode = .scaleToFill
        
        topThreeButton[1].setImage(UIImage(named: "송금")?.withRenderingMode(.alwaysOriginal), for: .normal)
        topThreeButton[1].contentMode = .scaleToFill
        
        topThreeButton[2].setImage(UIImage(named: "설정")?.withRenderingMode(.alwaysOriginal), for: .normal)
        topThreeButton[2].contentMode = .scaleToFill
    }
    
    func designBottomSheet() {
        bottomSheetLabel[0].text = "나와의 채팅"
        bottomSheetLabel[0].textColor = .white
        bottomSheetLabel[0].font = .systemFont(ofSize: 12)
        bottomSheetImage[0].image = UIImage(named: "나와의채팅")?.withRenderingMode(.alwaysOriginal)
        bottomSheetImage[0].contentMode = .scaleAspectFit
        bottomThreeButton[0].setTitle("", for: .normal)
//        bottomThreeButton[0].backgroundColor = .black
        
        bottomSheetLabel[1].text = "프로필 편집"
        bottomSheetLabel[1].textColor = .white
        bottomSheetLabel[1].font = .systemFont(ofSize: 12)
        bottomSheetImage[1].image = UIImage(named: "프로필편집")?.withRenderingMode(.alwaysOriginal)
        bottomSheetImage[1].contentMode = .scaleAspectFit
        bottomThreeButton[1].setTitle("", for: .normal)
//        bottomThreeButton[1].backgroundColor = .black
        
        bottomSheetLabel[2].text = "카카오스토리"
        bottomSheetLabel[2].textColor = .white
        bottomSheetLabel[2].font = .systemFont(ofSize: 12)
        bottomSheetImage[2].image = UIImage(named: "카카오스토리")?.withRenderingMode(.alwaysOriginal)
        bottomSheetImage[2].contentMode = .scaleAspectFit
        bottomThreeButton[2].setTitle("", for: .normal)
//        bottomThreeButton[2].backgroundColor = .black
        
    }
}
