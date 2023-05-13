//
//  Youtube.swift
//  Observer
//
//  Created by Minseong Kang on 2023/05/13.
//

import Foundation

// 주체 프로토콜
protocol Subject {
	var observers: [Observer] { get set }
	func subscribe(observer: Observer)
	func unSubscribe(observer: Observer)
	func notify(message: String)
}

class Youtube: Subject {
	var observers: [Observer]
	
	init(observers: [Observer]) {
		self.observers = observers
	}
	
	func subscribe(observer: Observer) {
		self.observers.append(observer)
		observer.update(message: "구독")
	}
	
	func unSubscribe(observer: Observer) {
		guard let subscriberID = self.observers.firstIndex(where: { $0.id == observer.id }) else { return }
		print("subscriberID ==> \(subscriberID)")
		self.observers.remove(at: subscriberID)
		observer.update(message: "구독 해제")
	}
	
	func notify(message: String) {
		for observer in observers {
			observer.update(message: message)
		}
	}
}
