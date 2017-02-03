//
//  SiguienteViewController.swift
//  Lista estáticas - clase 5
//
//  Created by Alumno on 2/02/17.
//  Copyright © 2017 area51. All rights reserved.
//

import UIKit

class SiguienteViewController: UIViewController {
    
    var NombreCompleto = ""
    var NumeroContacto = ""
    var Reubicacion = ""

    @IBOutlet weak var lblNombreCompleto: UILabel!
    
    @IBOutlet weak var lblNumeroContacto: UILabel!
    
    @IBOutlet weak var lblReubicacion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblNombreCompleto.text = NombreCompleto
        lblNumeroContacto.text = NumeroContacto
        lblReubicacion.text = Reubicacion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRegresarTouch(_ sender: UIButton) {
        //este comando nos regresa a una vista anterior
        self.dismiss(animated: true) {}
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
