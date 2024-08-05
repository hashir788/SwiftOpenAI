//
//  ImageObject.swift
//
//
//  Created by James Rochabrun on 10/12/23.
//

import Foundation

/// [Represents the url or the content of an image generated by the OpenAI API.](https://platform.openai.com/docs/api-reference/images/object)
public struct ImageObject: Decodable {
   /// The URL of the generated image, if response_format is url (default).
   public let url: URL?
   /// The base64-encoded JSON of the generated image, if response_format is b64_json.
   public let b64Json: String?
   /// The prompt that was used to generate the image, if there was any revision to the prompt.
   public let revisedPrompt: String?
   
   enum CodingKeys: String, CodingKey {
      case url
      case b64Json = "b64_json"
      case revisedPrompt = "revised_prompt"
   }
}
