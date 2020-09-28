//
// DecisionTreeClassifier.swift
//
// This file was automatically generated and should not be edited.
//

import CoreML


/// Model Prediction Input Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class DecisionTreeClassifierInput : MLFeatureProvider {

    /// breakout as string value
    var breakout: String

    /// oily as string value
    var oily: String

    /// drypatches as string value
    var drypatches: String

    /// iritated as string value
    var iritated: String

    var featureNames: Set<String> {
        get {
            return ["breakout", "oily", "drypatches", "iritated"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "breakout") {
            return MLFeatureValue(string: breakout)
        }
        if (featureName == "oily") {
            return MLFeatureValue(string: oily)
        }
        if (featureName == "drypatches") {
            return MLFeatureValue(string: drypatches)
        }
        if (featureName == "iritated") {
            return MLFeatureValue(string: iritated)
        }
        return nil
    }
    
    init(breakout: String, oily: String, drypatches: String, iritated: String) {
        self.breakout = breakout
        self.oily = oily
        self.drypatches = drypatches
        self.iritated = iritated
    }
}

/// Model Prediction Output Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class DecisionTreeClassifierOutput : MLFeatureProvider {

    /// Source provided by CoreML

    private let provider : MLFeatureProvider


    /// conclussion as string value
    lazy var conclussion: String = {
        [unowned self] in return self.provider.featureValue(for: "conclussion")!.stringValue
    }()

    /// conclussionProbability as dictionary of strings to doubles
    lazy var conclussionProbability: [String : Double] = {
        [unowned self] in return self.provider.featureValue(for: "conclussionProbability")!.dictionaryValue as! [String : Double]
    }()

    var featureNames: Set<String> {
        return self.provider.featureNames
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        return self.provider.featureValue(for: featureName)
    }

    init(conclussion: String, conclussionProbability: [String : Double]) {
        self.provider = try! MLDictionaryFeatureProvider(dictionary: ["conclussion" : MLFeatureValue(string: conclussion), "conclussionProbability" : MLFeatureValue(dictionary: conclussionProbability as [AnyHashable : NSNumber])])
    }

    init(features: MLFeatureProvider) {
        self.provider = features
    }
}


/// Class for model loading and prediction
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class DecisionTreeClassifier {
    var model: MLModel

/// URL of model assuming it was installed in the same bundle as this class
    class var urlOfModelInThisBundle : URL {
        let bundle = Bundle(for: DecisionTreeClassifier.self)
        return bundle.url(forResource: "DecisionTreeClassifier", withExtension:"mlmodelc")!
    }

    /**
        Construct a model with explicit path to mlmodelc file
        - parameters:
           - url: the file url of the model
           - throws: an NSError object that describes the problem
    */
    init(contentsOf url: URL) throws {
        self.model = try MLModel(contentsOf: url)
    }

    /// Construct a model that automatically loads the model from the app's bundle
    convenience init() {
        try! self.init(contentsOf: type(of:self).urlOfModelInThisBundle)
    }

    /**
        Construct a model with configuration
        - parameters:
           - configuration: the desired model configuration
           - throws: an NSError object that describes the problem
    */
    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    convenience init(configuration: MLModelConfiguration) throws {
        try self.init(contentsOf: type(of:self).urlOfModelInThisBundle, configuration: configuration)
    }

    /**
        Construct a model with explicit path to mlmodelc file and configuration
        - parameters:
           - url: the file url of the model
           - configuration: the desired model configuration
           - throws: an NSError object that describes the problem
    */
    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    init(contentsOf url: URL, configuration: MLModelConfiguration) throws {
        self.model = try MLModel(contentsOf: url, configuration: configuration)
    }

    /**
        Make a prediction using the structured interface
        - parameters:
           - input: the input to the prediction as DecisionTreeClassifierInput
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as DecisionTreeClassifierOutput
    */
    func prediction(input: DecisionTreeClassifierInput) throws -> DecisionTreeClassifierOutput {
        return try self.prediction(input: input, options: MLPredictionOptions())
    }

    /**
        Make a prediction using the structured interface
        - parameters:
           - input: the input to the prediction as DecisionTreeClassifierInput
           - options: prediction options 
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as DecisionTreeClassifierOutput
    */
    func prediction(input: DecisionTreeClassifierInput, options: MLPredictionOptions) throws -> DecisionTreeClassifierOutput {
        let outFeatures = try model.prediction(from: input, options:options)
        return DecisionTreeClassifierOutput(features: outFeatures)
    }

    /**
        Make a prediction using the convenience interface
        - parameters:
            - breakout as string value
            - oily as string value
            - drypatches as string value
            - iritated as string value
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as DecisionTreeClassifierOutput
    */
    func prediction(breakout: String, oily: String, drypatches: String, iritated: String) throws -> DecisionTreeClassifierOutput {
        let input_ = DecisionTreeClassifierInput(breakout: breakout, oily: oily, drypatches: drypatches, iritated: iritated)
        return try self.prediction(input: input_)
    }

    /**
        Make a batch prediction using the structured interface
        - parameters:
           - inputs: the inputs to the prediction as [DecisionTreeClassifierInput]
           - options: prediction options 
        - throws: an NSError object that describes the problem
        - returns: the result of the prediction as [DecisionTreeClassifierOutput]
    */
    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    func predictions(inputs: [DecisionTreeClassifierInput], options: MLPredictionOptions = MLPredictionOptions()) throws -> [DecisionTreeClassifierOutput] {
        let batchIn = MLArrayBatchProvider(array: inputs)
        let batchOut = try model.predictions(from: batchIn, options: options)
        var results : [DecisionTreeClassifierOutput] = []
        results.reserveCapacity(inputs.count)
        for i in 0..<batchOut.count {
            let outProvider = batchOut.features(at: i)
            let result =  DecisionTreeClassifierOutput(features: outProvider)
            results.append(result)
        }
        return results
    }
}
