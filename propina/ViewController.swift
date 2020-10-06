//
//  ViewController.swift
//  propina
//
//  Created by Alumno on 10/6/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPorcentaje: UILabel!
    @IBOutlet weak var sldPorcentaje: UISlider!
    @IBOutlet weak var lblTotalConPropina: UILabel!
    @IBOutlet weak var txtCuenta: UITextField!
    @IBAction func doChangePorcentaje(_ sender: Any) {
        lblPorcentaje.text = "\(Int(sldPorcentaje.value))%"
        var cuenta = 0.0
        if txtCuenta.text != nil && txtCuenta.text != "" {
            cuenta = Double(txtCuenta.text!)!
        }
        let cuentaConPropina = cuenta + cuenta * (Double(sldPorcentaje.value)/100)
        let strCuentaConPropina = String(format: "%.2f", cuentaConPropina)
        lblTotalConPropina.text = "$\(strCuentaConPropina)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

