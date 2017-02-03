//
//  DatosTableViewController.swift
//  Lista estáticas - clase 5
//
//  Created by Alumno on 2/02/17.
//  Copyright © 2017 area51. All rights reserved.
//

import UIKit

class DatosTableViewController: UITableViewController {
    
    @IBOutlet weak var swReubicacion: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Este método se aplicará cuando se haga click o touch sobre una fila
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //sección = 1
        //fila = 4
        
        if indexPath.section == 1 && indexPath.row == 4 {
            //manda a la otra vista relacionada mediante el segue ->
            self.performSegue(withIdentifier: "guardarCambios", sender: self)
        }
        
        // le decimos al tableView que deseleccione una celda
        tableView.deselectRow(at: indexPath, animated: true)
        
    }

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //identificamos la fila que queremos
        let indexPathNombre = IndexPath(row: 0, section: 0)
        
        let indexPathPhone = IndexPath(row: 1, section: 0)
        
        //creamos una variable que almacene esa fila
        let primeraCelda = tableView.cellForRow(at: indexPathNombre)
        
        let segundaCelda = tableView.cellForRow(at: indexPathPhone)
        
        //obtenemos el texto de esa fila
        let NombreCompleto = primeraCelda?.textLabel?.text
        
        let NumeroContacto = segundaCelda?.detailTextLabel?.text
        
        var Reubicacion = ""
        if swReubicacion.isOn {
            Reubicacion = "SI"
        } else {
            Reubicacion = "NO"
        }
            
        let viewController: SiguienteViewController = segue.destination as! SiguienteViewController
        
        viewController.NombreCompleto = NombreCompleto!
        
        viewController.NumeroContacto = NumeroContacto!
        
        viewController.Reubicacion = Reubicacion
        
        
    }
    

}
