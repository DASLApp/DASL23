//
//  AlphabetClassifier+Singleton.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//

import CoreML

extension Alphabet {
    /// Creates a shared Exercise Classifier instance for the app at launch.
    static let shared: Alphabet = {
        // Use a default model configuration.
        let defaultConfig = MLModelConfiguration()

        // Create an Exercise Classifier instance.
        guard let Alphabet = try? Alphabet(configuration: defaultConfig) else {
            // The app requires the action classifier to function.
            fatalError("Alphabet Classifier failed to initialize.")
        }

        // Ensure the Exercise Classifier.Label cases match the model's classes.
        Alphabet.checkLabels()

        return Alphabet
    }()
}
