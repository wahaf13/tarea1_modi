//
//  ViewController.swift
//  tarea1_libreria
//
//  Created by Wendy Hernandez on 19/01/16.
//  Copyright © 2016 Wendy Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var texto_busca: UITextField!
    @IBOutlet weak var texto_busca1: UITextField!
    @IBOutlet weak var resultado: UITextView!
    
    @IBOutlet weak var textito2: UISearchBar!
    @IBOutlet weak var textito: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.resultado.text = ""
    }

    
    @IBAction func peticion(sender: UITextField) {
        
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"+textito2.text!
        let url = NSURL(string: urls)
        let datos:NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data: datos!, encoding: NSUTF8StringEncoding)
        resultado.text = texto! as String
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


















