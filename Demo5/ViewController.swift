//
//  ViewController.swift
//  QnA
//
//  Created by 林盈君 on 2020/7/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabal: UILabel!
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet weak var ALabel: UILabel!
    
    var questions = [Question]()
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let question1 = Question()
        question1.description = "第一屆聲林之王的主持人由誰擔任？"
        question1.answer = "Lulu黃璐梓茵"
        questions.append(question1)
        
        let question2 = Question()
        question2.description = "第一屆聲林之王的冠軍是誰呢？"
        question2.answer = "李友廷"
        questions.append(question2)
        
        let question3 = Question()
        question3.description = "第一屆聲林之王「巨獸導師合唱賽」中，蕭敬騰選擇了選手申力安合唱了哪一首歌曲？"
        question3.answer = "皮囊"
        questions.append(question3)
        
        let question4 = Question()
        question4.description = "參加第一屆聲林之王而爆紅的選手Gail Sophicha來自哪一個國家？"
        question4.answer = "泰國"
        questions.append(question4)
        
        let question5 = Question()
        question5.description = "第一屆聲林之王「團隊合作賽」中，由選手許莉潔和安懂共同創作並演唱的歌曲名稱為何？"
        question5.answer = "當我回家"
        questions.append(question5)
        
        let question6 = Question()
        question6.description = "第一屆聲林之王選手孫肇谷所代表的動物為何？"
        question6.answer = "啄木鳥"
        questions.append(question6)
        
        countLabal.text = "1"
        QLabel.text = questions[0].description
        questions.shuffle()
        
    }
   
    @IBAction func showAButton(_ sender: Any) {
        ALabel.text = questions[index].answer
    }
    
    @IBAction func nextQButton(_ sender: Any) {
        index = index + 1
        if index == questions.count {
            index = 0
        }
        QLabel.text = questions[index].description
        ALabel.text = ""
        countLabal.text = "\(index+1)"
    }
    
}

 
