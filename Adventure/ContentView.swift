//
//  ContentView.swift
//  Adventure
//
//  Created by AHLAM on 08/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            VStack(spacing: 50){
                Text("    Explore Your \nFavorite Journey")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextOne"))
                
                Image("Start")
                    .resizable()
                    .frame(width: 450 , height: 450)
                
                NavigationLink{
                    Homepage()
                }label: {
                    Text("Get Started ")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.vertical,18)
                        .frame(maxWidth: .infinity)
                        .background(Color("TextTwo"))
                        .cornerRadius(60)
                        .shadow(color:Color.black.opacity(0.1),radius: 5,x:5,y:5)
                    
                        .foregroundColor(.white)
                        .padding(.horizontal,80)
                }
                
              
                   
              
            }}.navigationBarBackButtonHidden(true)
        
    }}
                
                
                
                
                
        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
