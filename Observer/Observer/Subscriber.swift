//
//  Subscriber.swift
//  Observer
//
//  Created by Minseong Kang on 2023/05/13.
//

import Foundation

class Subscriber: Observer {
	var id: String
	
	init(id: String) {
		self.id = id
	}
	
	func update(message: String) {
		print("\(id)님이 whalesTV 🐳 를 \(message) 했습니다!!")
	}
}
