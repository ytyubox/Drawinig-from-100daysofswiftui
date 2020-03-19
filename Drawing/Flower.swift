//
//  Flower.swift
//  Drawing
//
//  Created by 游宗諭 on 2020/3/19.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct Flower: Shape {
	var petalOffset: Double = -20
	var petalWidth: Double = 100
	var petalCount: CGFloat = 8
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let pi = CGFloat.pi
		let strideList = stride(from: 0, to: pi * 2, by: pi / petalCount)
		for number in strideList {
			let rotation =  CGAffineTransform(rotationAngle: number)
			let transform = CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2)
			let postion = rotation.concatenating(transform)
			
			let size = CGRect(x: CGFloat(petalOffset), y: 0, width: CGFloat(petalWidth), height: rect.width / 2)
			let originalPetal = Path(ellipseIn: size)
			let rotatedPetal = originalPetal.applying(postion)
			path.addPath(rotatedPetal)
		}
		return path
	}
	
    
}

struct Flower_Previews: PreviewProvider {
    static var previews: some View {
        Flower()
    }
}
