//
//  CustomListRowView.swift
//  Hike
//
//  Created by Alisson Inácio on 26/04/24.
//

import SwiftUI

struct CustomListRowView: View {
    //MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowColor: Color
    @State var rowLink: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
            //Content
            if rowContent != nil  {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            } else if (rowLink != nil && rowLinkDestination != nil){
                Link(rowLink!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
                
            } else {
                EmptyView()
            }
        }label:{
            //Label
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowColor: .pink, rowLink: "Credo Academy", rowLinkDestination: "https://credo.academy")
    }
}
