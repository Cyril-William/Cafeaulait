//
//  ContenersView.swift
//  Cafeaulait
//
//  Created by William Souef on 15/02/2023.
//

import SwiftUI

struct ContenersView: View {
    
    @State var buttonPressed : Bool = false
    
    let name : String
    let description : String
    let image : String
    let price : Int
    
    var body: some View {
        ZStack{
            
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 370, height: 250, alignment: .center)
                .background(
                    Color.black
                )
                .cornerRadius(15)
                .opacity(0.11)
                .shadow(color: Color.black, radius: 5, x: 10, y: 20)
            
            VStack {
                
                Text(name)
                    .font(.largeTitle)
                    .bold()
                    .scaledToFit()
                    .foregroundColor(Color.yellow)
                    .shadow(color: .orange, radius: 10, x: 10, y: 10)
                
                HStack(alignment: .top,spacing: 5){
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    VStack ( spacing: 30){
                        Text(description)
                            .font(.headline)
                            .lineSpacing(10)
                            .padding()
                        
                            .multilineTextAlignment(.center)
                        Text("Buy it now for only \(price)$")
                            .foregroundColor(.white)
                            .bold()
                            .font(.headline)
                            .background(
                                RoundedRectangle(cornerRadius: 5))
                            .frame(width: 200, height: 10)
                        
                        Button(action:{
                            buttonPressed = true
                        }){
                            if buttonPressed {
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(.brown)
                                    .opacity(0.1)
                                    .frame(width:40,height: 40)
                                
                                    .overlay{
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(.red)
                                            .frame(width: 30,height: 30)
                                    }
                            } else {
                                RoundedRectangle(cornerRadius: 30)
                                    .foregroundColor(.red)
                                    .opacity(0.1)
                                    .frame(width:40,height: 40)
                                    
                                
                                    .overlay{
                                        Image(systemName: "heart")
                                            .foregroundColor(.red)
                                            .frame(width: 30,height: 50)
                                    }
                            }
                        }
                    }
                }
                
            }
        }
    }
}
struct ContenersView_Previews: PreviewProvider {
    static var previews: some View {
        ContenersView(name: "Café de Paris", description: "Parisien atmosphere", image: "paris-cafe", price: 2)
    }
}
