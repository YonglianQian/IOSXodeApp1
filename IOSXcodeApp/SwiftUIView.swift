//
//  SwiftUIView.swift
//  IOSXcodeApp
//
//  Created by AbrahamQian on 2020/12/19.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("Hello, Snow!")
            .fontWeight(.bold)
            .foregroundColor(.green)
            .font(.title)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
