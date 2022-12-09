//
//  ContentView.swift
//  instagram-SwiftUI
//
//  Created by Ahmed Yamany on 09/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            StoriesView()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack{
            Image("logo")
            Spacer()
            HStack(spacing: 20.0){
                Image("add")
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.horizontal, 13)
        .padding(.vertical, 5)
    }
}

struct Story: View {
    let image: String = "profile"
    let name: String = "Cat Catty"
    
    var body: some View {
        VStack{
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .mask(Circle())
            }
            .overlay {
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                    .frame(width: 68, height: 68)
            }
            Text(name)
                .font(.caption)
        }
//        .frame(width: 70, height: 70)
    }
}

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0){
                Story()
                Story()
                Story()
                Story()
                Story()
                Story()
                Story()
            }
            .padding()
            
        }
    }
}
