//
//  Home.swift
//  SwiftUI_CustomBottomSheet
//
//  Created by park kyung seok on 2021/06/26.
//

import SwiftUI

struct Home: View {
    
    @StateObject var serverData = ServerViewModel()
    
    var gradient = [Color("gradient1"), Color("gradient2"), Color("gradient4")]
    var gradient2 = [Color("gradient1"), Color("gradient4")]
    var body: some View {
        
        VStack {
            
            VStack {
                Text("AESTHER")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                Text("STATUS")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Text(serverData.isConnected ? "CONNECTED" : "DISCONNECTED")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.top, 5)
                    .padding(.bottom, 30)
            }
            .frame(height: UIScreen.main.bounds.height / 3.3)
            
            
            VStack {
               
                
                
              
                
              
            }
            // Bottom View Area
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                
                LinearGradient(gradient: .init(colors: gradient2), startPoint: .top, endPoint: .bottom)
                    .clipShape(CustomShape())
                    .ignoresSafeArea()
                
                
                VStack {
                    
                    
                    //Button
                    Button(action: {
                        serverData.isConnected.toggle()
                    }) {
                        VStack(spacing: 10) {
                            Image(systemName: "power")
                                .font(.system(size: 60))
                                .foregroundColor(serverData.isConnected ? Color.red.opacity(0.6) : Color("power"))
                            
                            Text(serverData.isConnected ? "STOP" : "START")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding(60)
                        .background(
                            LinearGradient(gradient: .init(colors: [Color("pgradient1"), Color("pgradient2")]), startPoint: .top, endPoint: .bottom)
                                .clipShape(Circle())
                                .padding(15)
                                .background(Color("power1").opacity(0.7))
                                .clipShape(Circle())
                                .padding(15)
                                .background(Color("gradient2").opacity(0.7))
                                .clipShape(Circle())
                        )
                    }
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        // CardView
                        CardView(server: serverData.currentServer)
                            .background(BlurView())
                            .clipShape(Capsule())
                            .padding()
                    })
                    
                    Spacer()
                }
            })
            
          

           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
                        
            ZStack {
                LinearGradient(gradient: .init(colors: gradient), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                Color.black.opacity(0.2)
                    .ignoresSafeArea(.all, edges: .top)
            }
            
            
            
        )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
