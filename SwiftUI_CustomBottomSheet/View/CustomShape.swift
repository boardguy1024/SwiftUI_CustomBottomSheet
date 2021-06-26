//
//  CustomShape.swift
//  SwiftUI_CustomBottomSheet
//
//  Created by park kyung seok on 2021/06/26.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            // y70座標から全部バウンダリー描画
            path.move(to: .init(x: 0, y: 70))
            path.addLine(to: .init(x: 0, y: rect.height))
            path.addLine(to: .init(x: rect.width, y: rect.height))
            path.addLine(to: .init(x: rect.width, y: 70))
            
            let midX = rect.width / 2
            let width =  rect.width
            
            let controlWidth = midX - 100
            
            path.move(to: .init(x: 0, y: 70))
            
            //真ん中から左描画
            // to: x真ん中から y -20時からスタート
            let to = CGPoint(x: midX, y: -20)
            let control1 = CGPoint(x: controlWidth, y: 70)
            let control2 = CGPoint(x: controlWidth, y: -20)
            
            //真ん中から右描画
            let to1 = CGPoint(x: width, y: 70)
            let control3 = CGPoint(x: width - controlWidth, y: -20)
            let control4 = CGPoint(x: width - controlWidth, y: 70)
            
            /*
            左
            0: path.move
            1: control1
            2: control2
            3: to
             
                                 to
            y:-20   ・・・・2 ---- 3
            y: 0          |
            y: 70   0 --- 1・・・・・
                   ・・・・・・・・
            
            左
            4: control3
            5: control4
            3: to
             
        
            y: -20 　　　　        3 ---- 4
            y: 0                        |
            y: 70  　 　　              　5 --- 6
                   　               ・・・・・・・・
             
             */
            
            //左、右点の座標を元にカーブを描画
            path.addCurve(to: to, control1: control1, control2: control2)
            path.addCurve(to: to1, control1: control3, control2: control4)

        }
    }
    
    
    
}
