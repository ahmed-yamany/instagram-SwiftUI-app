//
//  ContentView.swift
//  instagram-SwiftUI
//
//  Created by Ahmed Yamany on 09/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            ScrollView(.vertical){
                VStack(spacing: 0.0) {
                    Stories()
                    Divider()
                    
                    Post()
                    Post()
                }
            }
            
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
                .frame(width: 70, height: 70)

            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
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
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack{
            HStack{
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .mask(Circle())
                    .overlay {
                        Circle()
                            .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1)
                            .frame(width: 35, height: 35)
                    }
                Text("Cat Catty")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            Button {
                
            } label: {
                Image("more")
                
            }
        }
        .padding(10)
    }
}


struct PostContent: View {
    var body: some View {
        Image("profile")
            .resizable()
            .frame(width: .infinity)
            .aspectRatio(contentMode: .fit)
        
        HStack{
            Image("heart")
            Image("comment")
            Image("share")
            Spacer()
            Image("bookmark")
        }
        .padding(.vertical, 9)
        .padding(.horizontal, 12)
        
    }
}

struct Post: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            PostContent()
            
            Text("Liked by Meng To and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            Text("I miss traveling to Japan")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            HStack {
                HStack {
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .mask(Circle())
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("🤣")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
    }
}
