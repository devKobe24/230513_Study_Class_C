//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import UIKit
// Controller
class ViewController: UIViewController {
    // View
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
	// Model
    var registrantList: [Registrant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
		register()
    }
	
	var name: String?
	var phoneNumber: String?
	
	// Controller
    @IBAction func hitRegisterButton(_ sender: Any) {
		guard let name = self.nameTextField.text else { return }
		guard let phoneNumber = self.phoneNumberTextField.text else { return }
		
		self.name = name
		self.phoneNumber = phoneNumber
		
		let registrant = Registrant(name: name, phoneNumber: phoneNumber)
    }
    
	// Controller
    @IBAction func hitCheckButton(_ sender: Any) {
//		print("hitCheckButton")
//		guard let name = name else { return }
//		guard let phoneNumber = phoneNumber else { return }
		
    }
	
    func register() {
		NotificationCenter.default.addObserver(
			self,
			selector: #selector(getNameData),
			name: NSNotification.Name.sendNameData,
			object: nil
		)
		NotificationCenter.default.addObserver(
			self,
			selector: #selector(getPhoneNumberData),
			name: NSNotification.Name.sendPhoneNumberData,
			object: nil
		)
		
    }
	
	@objc func getNameData(_ noti: Notification) {
		guard let nameData = noti.userInfo?[NotificationKey.nameData] as? String else { return }
		print("nameData => \(nameData)")
		self.nameLabel.text = nameData
	}
	
	@objc func getPhoneNumberData(_ noti: Notification) {
		guard let phoneNumberData = noti.userInfo?["phoneNumber"] as? String else { return }
		print("phoneNumberData => \(phoneNumberData)")
		self.phoneNumberLabel.text = phoneNumberData
	}
}
