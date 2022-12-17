//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Mert Gaygusuz on 17.12.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            //profile image & user info & tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user info & tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    //user info
                    HStack {
                        Text("Mert Gaygusuz")
                            .font(.subheadline).bold()
                        
                        Text("@mertgaygusuz")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2h")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //tweet caption
                    Text("Swifti en iyi şekilde öğrenip iyi yerlere geleceğim.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            //action buttons
            HStack {
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }

            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
