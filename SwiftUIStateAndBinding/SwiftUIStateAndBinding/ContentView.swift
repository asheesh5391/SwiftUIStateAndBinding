//
//  ContentView.swift
//  SwiftUIStateAndBinding
//
//  Created by Asheesh Kumar Verma on 26/08/22.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
    }
}

struct PlayerView: View {
    @State var isPlaying: Bool = false
    var episode: String = "Episode: 01"
    
    var body: some View {
        VStack {
            Text(isPlaying ? "Playing \(episode)" : episode)
                .foregroundColor(isPlaying ? .green : .red)
            PlayButton(isPlaying: $isPlaying) // Pass the binding
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
