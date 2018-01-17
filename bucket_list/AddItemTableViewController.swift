//
//  AddItemTableViewController.swift
//  bucket_list
//
//  Created by Emily on 1/16/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    @IBOutlet weak var itemTextField: UITextField!
    
    weak var delegate: AddItemTableViewControllerDelegate?
    var item: String?
    var indexPath: NSIndexPath?

    @IBAction func CancleButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
