//
//  ContentView.swift
//  Converter
//
//  Created by charlene hoareau on 10/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var celsiusTemp = 0.0
    @State private var fahrTemp = 0.0
    @State private var kelvinTemp = 0.0
    
    func convertTemperature() {
            // Convert Celsius to Fahrenheit and Kelvin
            fahrTemp = (celsiusTemp * 9/5) + 32
            kelvinTemp = celsiusTemp + 273.15
            
            // Convert Fahrenheit to Celsius and Kelvin
            celsiusTemp = (fahrTemp - 32) * 5/9
            kelvinTemp = (fahrTemp - 32) * 5/9 + 273.15
            
            // Convert Kelvin to Celsius and Fahrenheit
            celsiusTemp = kelvinTemp - 273.15
            fahrTemp = (kelvinTemp - 273.15) * 9/5 + 32
        }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Celsius temperature") {
                    TextField("Celsius", value: $celsiusTemp, format: .number)
                }
                Section("Fahrenheit temperature") {
                    TextField("Fahrenheit", value: $fahrTemp, format: .number)
                }
                Section("Kelvin temperature") {
                    TextField("Kelvin", value: $kelvinTemp, format: .number)
                }
            }
            Button("Convert", systemImage: "ruler", action: convertTemperature)
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .cornerRadius(10)

            .navigationTitle("Temp Converter")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
