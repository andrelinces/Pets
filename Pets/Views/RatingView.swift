//
//  RatingView.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import Foundation
import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int? /// So this means that you can use it for just for display purposes, but you can also use it to interact.
    
    private func startType(index: Int) -> String {
        
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...5, id:  \.self) { index in
                Image(systemName: self.startType(index: index))
                    .foregroundColor(Color.orange)
            }
        }
    }
}

#Preview {
    RatingView(rating: .constant(2))
}
