//
//  ContentView.swift
//  Mycardapp
//
//  Created by Zhansaya Bortanova on 30/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
    Color(red: 0.44, green: 0.63, blue: 1.00).ignoresSafeArea()
            VStack {
                Image("ava").resizable()
              .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
              .frame(width: 150, height: 150)
              .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
              .overlay(Circle()
              .stroke(lineWidth: 5))

                Text("ZHansaya Bortanova")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("iOS developer")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+971509728092")
                Card(image: "envelope.fill", message: "sayabortanova423@gmail.com")
            }
            .foregroundColor(.white)
           
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .padding(.horizontal)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: image)
                Text(message)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.purple)
                
            }
                .foregroundColor(Color .purple))
    }
}
