//
//  ToolCall.swift
//
//
//  Created by James Rochabrun on 11/14/23.
//

import Foundation

public struct ToolCall: Codable {
   
   public let index: Int?
   /// The ID of the tool call.
   public let id: String?
   /// The type of the tool. Currently, only `function` is supported.
   public let type: String?
   /// The function that the model called.
   public let function: FunctionCall
   
   public init(
      index: Int? = nil,
      id: String?,
      type: String = "function",
      function: FunctionCall)
   {
      self.index = index
      self.id = id
      self.type = type
      self.function = function
   }
}

public struct FunctionCall: Codable {
   
   /// The arguments to call the function with, as generated by the model in JSON format. Note that the model does not always generate valid JSON, and may hallucinate parameters not defined by your function schema. Validate the arguments in your code before calling your function.
   public let arguments: String
   /// The name of the function to call.
   public let name: String?
   
   public init(
      arguments: String,
      name: String)
   {
      self.arguments = arguments
      self.name = name
   }
}
