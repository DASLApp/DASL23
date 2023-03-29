//
//  AlphabetClassifier+PredictAction.swift
//  DASL
//
//  Created by Tanmay Singla on 2/12/23.
//

import CoreML

extension ActionModel{
    /// Predicts an action from a series of landmarks' positions over time.
    /// - Parameter window: An `MLMultiarray` that contains the locations of a
    /// person's body landmarks for multiple points in time.
    /// - Returns: An `ActionPrediction`.
    /// - Tag: predictActionFromWindow
    func predictActionFromWindow(_ window: MLMultiArray) -> ActionPrediction {
        do {
            let output = try prediction(poses: window)
            let action = Label(output.label)
            let confidence = output.labelProbabilities[output.label]!

            return ActionPrediction(label: action.rawValue, confidence: confidence)

        } catch {
            fatalError("Aciton Classifier prediction error: \(error)")
        }
    }
}
