//
//  ContentView.swift
//  chromaticTuner
//
//  Created by stationAstral on 10/31/23.
//

import SwiftUI

struct ChromaticTunerView: View {

    @State private var noteName = "A"
    @State private var noteFrequency = 440.0

    var body: some View {
        VStack {
            Text(noteName)
                .font(.largeTitle)

            Text("\(noteFrequency, specifier: "%.2f") Hz")
                .font(.title)

            Button(action: {
                // Start the tuner
            }) {
                Text("Start")
            }
Spacer()
            // Add a note indicator of a full octave
            Image(systemName: "pianokeys")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 300, height: 100)
    
                            // Add a needle
            Image(systemName: "arrow.up.and.down")
                .resizable()
                .frame(width: 50, height: 100)
                .padding(100)
            // Add a flat/sharp indicator
            Image(systemName: "music.quarternote.32")
                .resizable()
            //change color to red
                .foregroundColor(.red)
                .frame(width: 30, height: 30)
                .position(x: 150, y: 400)
        }
    }
}

struct ChromaticTunerView_Previews: PreviewProvider {
    static var previews: some View {
        ChromaticTunerView()
    }
}

