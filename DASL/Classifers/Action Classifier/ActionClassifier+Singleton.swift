//
//  ActionClassifier+Singleton.swift
//  DASL
//
//  Created by Tanmay Singla on 2/12/22.
//

import CoreML

extension ActionModel {
    /// Creates a shared Exercise Classifier instance for the app at launch.
    static let shared: ActionModel = {
        // Use a default model configuration.
        let defaultConfig = MLModelConfiguration()

        // Create an Exercise Classifier instance.
        guard let ActionModel = try? ActionModel(configuration: defaultConfig) else {
            // The app requires the action classifier to function.
            fatalError("Action Classifier failed to initialize.")
        }

        // Ensure the Exercise Classifier.Label cases match the model's classes.
        ActionModel.checkLabels()

        return ActionModel
    }()
}
