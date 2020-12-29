//
//  ContentView.swift
//  Movies
//
//  Created by rawan alamirah on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            MovieRow(movieName: "Aladin", movieCharacter:["Aladin", "Jasmine", "Genie"] )
            MovieRow(movieName: "Coco", movieCharacter:["Miguel", "Rivera", "Cruz"])
            MovieRow(movieName: "Lilo & Stitch", movieCharacter:["Stitch", "Lilo", "Nani"])
        }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movieName: String
    let movieCharacter: [String]
    
    var body: some View {
        HStack(alignment: .center){
            Image(movieName)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                
            
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(movieCharacter.joined(separator: " , "))
            }
            
        }
    }
}
