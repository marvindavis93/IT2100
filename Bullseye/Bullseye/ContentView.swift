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
    @State  var sliderValue : Double =  50.0
var body: some View {
        
   
  //Target row
    HStack {
        VStack {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Put the bullseye as close as you can to:")
                        Text("100")
                    }
                }
                         
            }
    }
            Spacer()
      //Slider row
            
            HStack{
                Text("1")
                
                Slider(value: self.$sliderValue, in : 1...100)
                Text("100")
                
            }
        
            Spacer()
        //Button row
        
    Button(action: {
        print("button pressed!")
        self.alertIsVisible = true
    }) {
        Text("Hit me")
    }
    .alert(isPresented: $alertIsVisible)  { () ->
        Alert in
        return Alert(title: Text("Hello There!"),
                     message: Text ("The slider's value is  \(self.sliderValue)."),
        dismissButton: .default(Text("Awesome!")));
        }
            
            Spacer()
        //Score row
            HStack{
                Text("Start over")
                Spacer()
                Text ("Score")
                Text("999999")
                Spacer()

                Text("Round")
                Text("999")
                Spacer()
                Button(action: {} ) {
                    Text ("Info")
                }
                
        
            }
            .padding(.bottom, 20)
        }
        
    }
}
        
        
        
        
        
        
        
        
        
       
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() .previewLayout( .fixed(width: 896, height: 414))
    }
}


}
