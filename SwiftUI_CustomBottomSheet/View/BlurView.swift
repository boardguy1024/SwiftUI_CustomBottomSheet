//
//  BlurView.swift
//  SwiftUI_CustomBottomSheet
//
//  Created by park kyung seok on 2021/06/27.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialLight))
        return view
    }
 
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
