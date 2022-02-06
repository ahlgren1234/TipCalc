//
//  GuestCountView.swift
//  TipCalc
//
//  Created by Peter Ahlgren on 2022-02-04.
//

import SwiftUI

struct GuestCountView: View {
    @Binding var guestCount: Int
    
    var body: some View {
        HStack(spacing: 20) {
            Button {
                if guestCount > 1 {
                    guestCount -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
                    .foregroundColor(.indigo)
                    .font(.system(.title, design: .rounded))
            }
            
            Text("\(guestCount)")
                .foregroundColor(.primary)
                .font(.system(size: 42, weight: .black, design: .monospaced))
            
            Button {
                guestCount += 1
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(.indigo)
                    .font(.system(.title, design: .rounded))
            }
        }
    }
}

struct GuestCountView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GuestCountView(guestCount: .constant(1))
                
            
        }
    }
}
