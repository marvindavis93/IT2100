//
//  ContentView.swift
//  Knock Knock
//
//  Created by Marv Davis on 2/9/20.
//  Copyright © 2020 Marv Davis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    
    @State var whosThereIsVisible: Bool = false
    
   var body: some View {
   VStack {
       Text("Hello, World!")
           .fontWeight(.bold)
           .foregroundColor(Color.green)
       Button(action: {
           print ("button pressed!")
           self.whosThereIsVisible = true
       
       
           }) {
            
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
