//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by 설구 on 21/12/2018.
//  Copyright © 2018 이형재. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    var param : MemoData?
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        self.navigationItem.title = dateString
    }
    


}
