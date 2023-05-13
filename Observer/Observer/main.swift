//
//  main.swift
//  Observer
//
//  Created by Minseong Kang on 2023/05/13.
//

import Foundation

let whalesTV: Youtube = Youtube(observers: [])
let kobe: Subscriber = Subscriber(id: "kobe🥴")
let moon: Subscriber = Subscriber(id: "moon🌙")
let dasan: Subscriber = Subscriber(id: "dasan🏞️")
let gundy: Subscriber = Subscriber(id: "Gundy🥸")
subscribeTheChannel()

func subscribeTheChannel() {
	whalesTV.subscribe(observer: kobe)
	whalesTV.subscribe(observer: moon)
	whalesTV.subscribe(observer: dasan)
	whalesTV.subscribe(observer: gundy)
	
//	whalesTV.notify(message: "구독")
	
	whalesTV.unSubscribe(observer: dasan)
	whalesTV.unSubscribe(observer: moon)
	whalesTV.unSubscribe(observer: kobe)
	
	
//	whalesTV.notify(message: "구독 해제")
}


