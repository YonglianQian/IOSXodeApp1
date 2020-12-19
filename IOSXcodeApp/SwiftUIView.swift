//
//  SwiftUIView.swift
//  IOSXcodeApp
//
//  Created by AbrahamQian on 2020/12/19.
//

import SwiftUI
import AppCenterAnalytics

struct SwiftUIView: View {
    var body: some View {
        Text("Hello, Snow!")
            .fontWeight(.bold)
            .foregroundColor(.green)
            .font(.title)
    }
    init(){
        let date=Date()
        let df=DateFormatter()
        df.dateFormat="yyyy-MM-dd HH:mm:ss"
        print("SwiftUIView init method: "+df.string(from: date))
        Analytics.trackEvent("SwiftUIView init method: "+df.string(from: date))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
