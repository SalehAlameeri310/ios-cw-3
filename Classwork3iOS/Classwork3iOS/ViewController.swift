//
//  ViewController.swift
//  Classwork3iOS
//
//  Created by Bodour Alrashidi on 6/6/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     // MARK: - يمكنك اضافه اللغات التي تريدها هنا
    var  helloLangauge = ["اهلا"," Hola "," Bonjour "," Konnichiwa "," Namaste ","Ciao","Привет","Olá"]
    var flagLanguage = [" 🇰🇼 "," 🇪🇸  "," 🇫🇷  "," 🇯🇵 "," 🇮🇳 ","🇮🇹","🇷🇺","🇵🇹"]
    
     // MARK: - علي كل لغه جديد يجب ان تضيف خانه جديده داخل ال greetingArray
    var greetingArray : [String] = ["","","","","","","",""]
    
    
    @IBOutlet weak var NameTextfield: UITextField!
    @IBOutlet weak var Namelabel: UILabel!
    
    @IBAction func Pressbutton(_ sender: Any) {
        Namelabel.text = ""
        
        let name = NameTextfield.text!
        
        
        // MARK: -  قم باستدعاء الداله هنا
        addname(name: name, helloarray: helloLangauge, flagarray: flagLanguage)
        
        // MARK: -  النهايه⚠️⚠️لا تقم بغير تحت هذا السطر
        
        
        
       
        // MARK: -  تقوم ب عرض المصفوفه  و اضافه سطر جديد
        for index in 0..<(greetingArray.count)
        {
            
            Namelabel.text! += greetingArray[index] + "\n"
            
        }
        
        NameTextfield.text = ""
    }
    
    
    
    // MARK: -  قم بكتابة الداله هنا
   
    func addname(name: String, helloarray: [String], flagarray :[String])
    {
          for i in 0..<helloarray.count{
        greetingArray[i] = "\(name) \(helloarray[i])  \(flagarray[i])"
        }
        
    }
    
    
    // MARK: -   النهايه⚠️⚠️ لا تقوم بغير تحت هذا السطر
    
    
 
    
    
}

