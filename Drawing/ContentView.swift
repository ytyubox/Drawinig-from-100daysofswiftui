//
//  ContentView.swift
//  Drawing
//
//  Created by 游宗諭 on 2020/3/19.
//  Copyright © 2020 游宗諭. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State private var petalOffset: Double = -20
	@State private var petalWidset: Double = 100
	@State private var petalCount: CGFloat = 8
    var body: some View {
		VStack {
			Flower(petalOffset: petalOffset, petalWidth: petalWidset,petalCount: petalCount)
				.fill(Color.red, style: FillStyle(eoFill: true))
				.padding()
			Text("Count")
			Slider(value: $petalCount, in: 1...20)
			Text("Offset")
			Slider(value: $petalOffset, in: -40...40)
				.padding([.horizontal, .bottom])
			Text("Width")
			Slider(value: $petalWidset, in: 0...100)
				.padding(.horizontal)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
