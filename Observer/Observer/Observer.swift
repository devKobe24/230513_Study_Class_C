//
//  Observer.swift
//  Observer
//
//  Created by Minseong Kang on 2023/05/13.
//

import Foundation

protocol Observer {
	var id: String { get set }
	func update(message: String)
}
