//
//  ContentView.swift
//  SwiftUIChangesBindable
//
//  Created by Lori Rothermel on 12/12/24.
//

import SwiftUI
import SwiftData

@Observable
class Light {
    var isOn: Bool = false
}

struct Room: View {
    @Bindable var light: Light
        
    var body: some View {
        Toggle(isOn: $light.isOn) {
            EmptyView()
        }  // Toggle
        .fixedSize()
       
    }  // some View
    
}  // Room


struct ContentView: View {
    @State private var light: Light = Light()
    
    var body: some View {
        VStack {
            Room(light: light)
        }  // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(light.isOn ? .yellow : .black)
        
    }  // some View
    
}  // ContentView

#Preview {
    ContentView()
}
