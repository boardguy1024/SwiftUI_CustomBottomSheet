//
//  CardView.swift
//  SwiftUI_CustomBottomSheet
//
//  Created by park kyung seok on 2021/06/27.
//

import SwiftUI

struct CardView: View {
    
    @State var server: Server = Server(name: "United States", flag: "us")
    
    var body: some View {
        
        HStack(spacing: 15) {
            Image(server.flag)
                .resizable()
                .frame(width: 45, height: 45)
            
            Text(server.name)
                .font(.system(size: 22))
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 24))
                .foregroundColor(.black)
        }
        .padding(.leading, 10)
        .padding(.trailing)
        .padding(.vertical)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
