//
//  MessageParameter.swift
//
//
//  Created by James Rochabrun on 11/16/23.
//

import Foundation

/// [Create a message.](https://platform.openai.com/docs/api-reference/messages/createMessage)
public struct MessageParameter: Encodable {
   
   /// The role of the entity that is creating the message. Allowed values include:
   /// user: Indicates the message is sent by an actual user and should be used in most cases to represent user-generated messages.
   /// assistant: Indicates the message is generated by the assistant. Use this value to insert messages from the assistant into the conversation.
   let role: String
   /// The content of the message.
   let content: String
   /// A list of files attached to the message, and the tools they should be added to.
   let attachments: [MessageAttachment]?
   /// Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.
   let metadata: [String: String]?
   
   public enum Role: String {
      /// Indicates the message is sent by an actual user and should be used in most cases to represent user-generated messages.
      case user
      /// Indicates the message is generated by the assistant. Use this value to insert messages from the assistant into the conversation.
      case assistant
   }
   
   enum CodingKeys: String, CodingKey {
      case role
      case content
      case attachments
      case metadata
   }
   
   public init(
      role: Role,
      content: String,
      attachments: [MessageAttachment]? = nil,
      metadata: [String : String]? = nil)
   {
      self.role = role.rawValue
      self.content = content
      self.attachments = attachments
      self.metadata = metadata
   }
}


