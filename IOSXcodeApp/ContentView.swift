//
//  ContentView.swift
//  IOSXcodeApp
//
//  Created by AbrahamQian on 2020/12/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Text("Hello, world!")
            .font(.title)
            .foregroundColor(.green)
            .padding()
            Text("Hello, Abraham")
                .font(.subheadline)
                .foregroundColor(.red)
                .padding()
//            Button(action: SwiftUIView()) {
//                Text("Test button")
//            }
        NavigationView{
            List {
            NavigationLink(destination: SwiftUIView())
            {
            Text("transfer to another view")
            }}
            .navigationBarTitle(Text("SwiftUIView"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
