//
//  ViewController.swift
//  Lesson9Project
//
//  Created by Vitali Bahdanau on 21.02.24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLables: UILabel!
    var counter: Int = 0
    
    // создание экземпляра кнопки
    lazy var button: UIButton = makeButton()
    
    // button.setTitle("Hello", for: .normal)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //result.text = "\(counter)"
        
        self.view.addSubview(button)
    }
    
    
    //}
    //
    //
    //
    //func makeButton() -> UIButton {
    //
    //    return UIButton()
    //}
    
    func makeButton() -> UIButton {
        var button = UIButton()
        button.setTitle("some string", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false //отключение автоконстрейнов
        
        //настройка юай для кнопки
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        
        
        
        
        return UIButton()
    }
}
