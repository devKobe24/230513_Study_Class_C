//
//  Registrant.swift
//  Experiment_MVC
//
//  Created by Minseong Kang on 2023/05/12.
//

import Foundation

struct Registrant {
	let name: String
	let phoneNumber: String
	
	init(name: String, phoneNumber: String) {
		self.name = name
		self.phoneNumber = phoneNumber
		didReceiveData()
	}
	
	func didReceiveData() {
		NotificationCenter.default.post(
			name: Notification.Name.sendNameData,
			object: nil,
			userInfo: [NotificationKey.nameData: name]
		)
		NotificationCenter.default.post(
			name: Notification.Name.sendPhoneNumberData,
			object: nil,
			userInfo: ["phoneNumber": phoneNumber]
		)
	}
}

enum NotificationKey {
	case nameData
	case phoneNumberData
}
