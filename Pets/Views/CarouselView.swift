//
//  CarouselView.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: CarouselUIModel
    
    var body: some View {
        ScrollView(.horizontal) {
            
            HStack {
                
                ForEach(uiModel.items) { item in
                    
                    Navigator.perform(action: uiModel.action, payload: item) {
                        AsyncImage(url: item.imageUrl) { image in
                            image
                                .resizable()
                                .frame(width: 200, height: 200)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    
                }
                
            }
            
        }
    }
}


//struct CarouselView_Previews: PreviewProvider {
//    static var previews: some View {
//        CarouselView(uiModel: CarouselUIModel(imageUrls: []))
//    }
//}
