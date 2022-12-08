/*

Abstract:
Provides a convenience method that makes a prediction from a multiarray window.
*/

import CoreML

extension DASL_phrases_model_1 {
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
            fatalError("Phrases Classifier prediction error: \(error)")
        }
    }
}
