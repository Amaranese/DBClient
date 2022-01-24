

import UIKit

class DetailViewController: UIViewController, DBClientInjectable {

    var detailItem: User!
    
    @IBOutlet private weak var userNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.text = detailItem.name
        title = detailItem.id
    }
    
    @IBAction private func saveButtonAction() {
        detailItem.name = userNameTextField.text ?? ""
        dbClient.update(detailItem) { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }
    }
    
}
