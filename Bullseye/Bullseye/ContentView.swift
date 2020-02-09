//
//  ContentView.swift
//  Bullseye
//
//  Created by Marv Davis on 2/7/20.
//  Copyright © 2020 Marv Davis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var alertIsVisible: Bool = false
    @State var whosThereIsVisible: Bool =  false
    
    
    
var body: some View {
    VStack {
        Text("Hello, World!")
            .fontWeight(.bold)
            .foregroundColor(Color.green)
        Button(action: {
            print ("button pressed!")
            self.alertIsVisible = true
        
        
            }) {
            Text("Hit me ")
        }
        
        .alert(isPresented:$alertIsVisible) { () ->
        Alert in
        return Alert(title: Text("Hello there!"),
            message: Text ("This is my first pop - up!"),
            dismissButton: .default(Text("Awesome")))
    }
        Button(action: {
            self.whosThereIsVisible = true
               
            
        }){
                Text("Knock Knock")
            }
            
            
            .alert(isPresented:$whosThereIsVisible) { () ->
            Alert in
            return Alert(title: Text("Who's There!"),
                message: Text ("Cow!"),
                dismissButton: .default(Text("Cow Who?,  Moooooove Over!")));
        }
        
    }
        
    }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


