//
//  EventListItemView.swift
//  TarongaZoo-SwiftUI
//
//  Created by JunHyuk Lim on 23/9/2022.
//

import SwiftUI

struct EventListItemView: View {
    //MARK: - PROPERTIES
    let event : Event
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image(event.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 8){
                Text(event.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    
                    
                Text(event.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            } //: VSTACK
        } //: HSTACK
    }
}
//MARK: - PREVIEW
struct EventListItemView_Previews: PreviewProvider {
    static let events : [Event] = Bundle.main.decode("events.json")
    
    static var previews: some View {
        EventListItemView(event: events[0]).previewLayout(.sizeThatFits)
            .padding()
    }
}
