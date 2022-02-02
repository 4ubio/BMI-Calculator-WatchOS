//
//  ContentView.swift
//  BMI Calculator WatchKit Extension
//
//  Created by Sebastián Rubio on 01/02/22.
//

import SwiftUI

func condition(bmi: Double) -> String {
    if bmi < 18.5 {
        return "Underweight 😥"
    } else if bmi < 24.9 {
        return "Normal 😃"
    } else {
        return "Overweight 😥"
    }
}

struct ContentView: View {
    
    @State private var heightSlider: Double = 1.50
    @State private var weightSlider: Double = 70.0
    @State private var isEditing = false
        
    var body: some View {
        ScrollView {
            
            //Calculate
            let height = String(format: "%.2f", heightSlider)
            let weight = String(format: "%.0f", weightSlider)
            let bmi = Double(weight)! / (Double(height)! * Double(height)!)
            let bmiToDisplay = String(format: "%.1f", bmi)
            let textResult = condition(bmi: Double(bmiToDisplay)!)
            
            Text("Calculate your BMI").font(.system(size: 22))
            Divider().colorInvert()
            
            //Height
            VStack {
                Text("Height: \(height) m")
                Slider(value: $heightSlider, in: 0...2.50, step: 0.02).accentColor(.green)
            }
            Divider().colorInvert()
            
            //Weight
            VStack{
                Text("Weight: \(weight) kg")
                Slider(value: $weightSlider, in: 0...100.0, step: 1.00).accentColor(.green)
            }
            Divider().colorInvert()
            
            VStack {
                Text("Your BMI value: ")
                Text("\(bmiToDisplay)").font(.system(size: 35))
                Text("\(textResult)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
