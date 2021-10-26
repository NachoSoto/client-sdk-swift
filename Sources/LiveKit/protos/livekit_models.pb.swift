// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: livekit_models.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Livekit_TrackType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case audio // = 0
  case video // = 1
  case data // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .audio
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .audio
    case 1: self = .video
    case 2: self = .data
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .audio: return 0
    case .video: return 1
    case .data: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Livekit_TrackType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Livekit_TrackType] = [
    .audio,
    .video,
    .data,
  ]
}

#endif  // swift(>=4.2)

enum Livekit_TrackSource: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0
  case camera // = 1
  case microphone // = 2
  case screenShare // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .camera
    case 2: self = .microphone
    case 3: self = .screenShare
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .camera: return 1
    case .microphone: return 2
    case .screenShare: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Livekit_TrackSource: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Livekit_TrackSource] = [
    .unknown,
    .camera,
    .microphone,
    .screenShare,
  ]
}

#endif  // swift(>=4.2)

struct Livekit_Room {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sid: String = String()

  var name: String = String()

  var emptyTimeout: UInt32 = 0

  var maxParticipants: UInt32 = 0

  var creationTime: Int64 = 0

  var turnPassword: String = String()

  var enabledCodecs: [Livekit_Codec] = []

  var metadata: String = String()

  var numParticipants: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_Codec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var mime: String = String()

  var fmtpLine: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_ParticipantInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sid: String = String()

  var identity: String = String()

  var state: Livekit_ParticipantInfo.State = .joining

  var tracks: [Livekit_TrackInfo] = []

  var metadata: String = String()

  /// timestamp when participant joined room, in seconds
  var joinedAt: Int64 = 0

  /// hidden participant (used for recording)
  var hidden: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum State: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// websocket' connected, but not offered yet
    case joining // = 0

    /// server received client offer
    case joined // = 1

    /// ICE connectivity established
    case active // = 2

    /// WS disconnected
    case disconnected // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .joining
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .joining
      case 1: self = .joined
      case 2: self = .active
      case 3: self = .disconnected
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .joining: return 0
      case .joined: return 1
      case .active: return 2
      case .disconnected: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Livekit_ParticipantInfo.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Livekit_ParticipantInfo.State] = [
    .joining,
    .joined,
    .active,
    .disconnected,
  ]
}

#endif  // swift(>=4.2)

struct Livekit_TrackInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sid: String = String()

  var type: Livekit_TrackType = .audio

  var name: String = String()

  var muted: Bool = false

  /// original width of video (unset for audio)
  /// clients may receive a lower resolution version with simulcast
  var width: UInt32 = 0

  /// original height of video (unset for audio)
  var height: UInt32 = 0

  /// true if track is simulcasted
  var simulcast: Bool = false

  /// true if DTX (Discontinuous Transmission) is disabled for audio
  var disableDtx: Bool = false

  /// source of media
  var source: Livekit_TrackSource = .unknown

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// new DataPacket API
struct Livekit_DataPacket {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var kind: Livekit_DataPacket.Kind = .reliable

  var value: Livekit_DataPacket.OneOf_Value? = nil

  var user: Livekit_UserPacket {
    get {
      if case .user(let v)? = value {return v}
      return Livekit_UserPacket()
    }
    set {value = .user(newValue)}
  }

  var speaker: Livekit_ActiveSpeakerUpdate {
    get {
      if case .speaker(let v)? = value {return v}
      return Livekit_ActiveSpeakerUpdate()
    }
    set {value = .speaker(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Value: Equatable {
    case user(Livekit_UserPacket)
    case speaker(Livekit_ActiveSpeakerUpdate)

  #if !swift(>=4.1)
    static func ==(lhs: Livekit_DataPacket.OneOf_Value, rhs: Livekit_DataPacket.OneOf_Value) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.user, .user): return {
        guard case .user(let l) = lhs, case .user(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.speaker, .speaker): return {
        guard case .speaker(let l) = lhs, case .speaker(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  enum Kind: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case reliable // = 0
    case lossy // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .reliable
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .reliable
      case 1: self = .lossy
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .reliable: return 0
      case .lossy: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Livekit_DataPacket.Kind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Livekit_DataPacket.Kind] = [
    .reliable,
    .lossy,
  ]
}

#endif  // swift(>=4.2)

struct Livekit_ActiveSpeakerUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var speakers: [Livekit_SpeakerInfo] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_SpeakerInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sid: String = String()

  /// audio level, 0-1.0, 1 is loudest
  var level: Float = 0

  /// true if speaker is currently active
  var active: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_UserPacket {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// participant ID of user that sent the message
  var participantSid: String = String()

  /// user defined payload
  var payload: Data = Data()

  /// the ID of the participants who will receive the message (the message will be sent to all the people in the room if this variable is empty)
  var destinationSids: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "livekit"

extension Livekit_TrackType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AUDIO"),
    1: .same(proto: "VIDEO"),
    2: .same(proto: "DATA"),
  ]
}

extension Livekit_TrackSource: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "CAMERA"),
    2: .same(proto: "MICROPHONE"),
    3: .same(proto: "SCREEN_SHARE"),
  ]
}

extension Livekit_Room: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Room"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sid"),
    2: .same(proto: "name"),
    3: .standard(proto: "empty_timeout"),
    4: .standard(proto: "max_participants"),
    5: .standard(proto: "creation_time"),
    6: .standard(proto: "turn_password"),
    7: .standard(proto: "enabled_codecs"),
    8: .same(proto: "metadata"),
    9: .standard(proto: "num_participants"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sid) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self.emptyTimeout) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.maxParticipants) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.creationTime) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.turnPassword) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.enabledCodecs) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.metadata) }()
      case 9: try { try decoder.decodeSingularUInt32Field(value: &self.numParticipants) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sid.isEmpty {
      try visitor.visitSingularStringField(value: self.sid, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.emptyTimeout != 0 {
      try visitor.visitSingularUInt32Field(value: self.emptyTimeout, fieldNumber: 3)
    }
    if self.maxParticipants != 0 {
      try visitor.visitSingularUInt32Field(value: self.maxParticipants, fieldNumber: 4)
    }
    if self.creationTime != 0 {
      try visitor.visitSingularInt64Field(value: self.creationTime, fieldNumber: 5)
    }
    if !self.turnPassword.isEmpty {
      try visitor.visitSingularStringField(value: self.turnPassword, fieldNumber: 6)
    }
    if !self.enabledCodecs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.enabledCodecs, fieldNumber: 7)
    }
    if !self.metadata.isEmpty {
      try visitor.visitSingularStringField(value: self.metadata, fieldNumber: 8)
    }
    if self.numParticipants != 0 {
      try visitor.visitSingularUInt32Field(value: self.numParticipants, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_Room, rhs: Livekit_Room) -> Bool {
    if lhs.sid != rhs.sid {return false}
    if lhs.name != rhs.name {return false}
    if lhs.emptyTimeout != rhs.emptyTimeout {return false}
    if lhs.maxParticipants != rhs.maxParticipants {return false}
    if lhs.creationTime != rhs.creationTime {return false}
    if lhs.turnPassword != rhs.turnPassword {return false}
    if lhs.enabledCodecs != rhs.enabledCodecs {return false}
    if lhs.metadata != rhs.metadata {return false}
    if lhs.numParticipants != rhs.numParticipants {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_Codec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Codec"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mime"),
    2: .standard(proto: "fmtp_line"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.mime) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.fmtpLine) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mime.isEmpty {
      try visitor.visitSingularStringField(value: self.mime, fieldNumber: 1)
    }
    if !self.fmtpLine.isEmpty {
      try visitor.visitSingularStringField(value: self.fmtpLine, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_Codec, rhs: Livekit_Codec) -> Bool {
    if lhs.mime != rhs.mime {return false}
    if lhs.fmtpLine != rhs.fmtpLine {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_ParticipantInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ParticipantInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sid"),
    2: .same(proto: "identity"),
    3: .same(proto: "state"),
    4: .same(proto: "tracks"),
    5: .same(proto: "metadata"),
    6: .standard(proto: "joined_at"),
    7: .same(proto: "hidden"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sid) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.identity) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.tracks) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.metadata) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.joinedAt) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.hidden) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sid.isEmpty {
      try visitor.visitSingularStringField(value: self.sid, fieldNumber: 1)
    }
    if !self.identity.isEmpty {
      try visitor.visitSingularStringField(value: self.identity, fieldNumber: 2)
    }
    if self.state != .joining {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 3)
    }
    if !self.tracks.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tracks, fieldNumber: 4)
    }
    if !self.metadata.isEmpty {
      try visitor.visitSingularStringField(value: self.metadata, fieldNumber: 5)
    }
    if self.joinedAt != 0 {
      try visitor.visitSingularInt64Field(value: self.joinedAt, fieldNumber: 6)
    }
    if self.hidden != false {
      try visitor.visitSingularBoolField(value: self.hidden, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_ParticipantInfo, rhs: Livekit_ParticipantInfo) -> Bool {
    if lhs.sid != rhs.sid {return false}
    if lhs.identity != rhs.identity {return false}
    if lhs.state != rhs.state {return false}
    if lhs.tracks != rhs.tracks {return false}
    if lhs.metadata != rhs.metadata {return false}
    if lhs.joinedAt != rhs.joinedAt {return false}
    if lhs.hidden != rhs.hidden {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_ParticipantInfo.State: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "JOINING"),
    1: .same(proto: "JOINED"),
    2: .same(proto: "ACTIVE"),
    3: .same(proto: "DISCONNECTED"),
  ]
}

extension Livekit_TrackInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TrackInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sid"),
    2: .same(proto: "type"),
    3: .same(proto: "name"),
    4: .same(proto: "muted"),
    5: .same(proto: "width"),
    6: .same(proto: "height"),
    7: .same(proto: "simulcast"),
    8: .standard(proto: "disable_dtx"),
    9: .same(proto: "source"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sid) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.muted) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self.width) }()
      case 6: try { try decoder.decodeSingularUInt32Field(value: &self.height) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.simulcast) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.disableDtx) }()
      case 9: try { try decoder.decodeSingularEnumField(value: &self.source) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sid.isEmpty {
      try visitor.visitSingularStringField(value: self.sid, fieldNumber: 1)
    }
    if self.type != .audio {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    if self.muted != false {
      try visitor.visitSingularBoolField(value: self.muted, fieldNumber: 4)
    }
    if self.width != 0 {
      try visitor.visitSingularUInt32Field(value: self.width, fieldNumber: 5)
    }
    if self.height != 0 {
      try visitor.visitSingularUInt32Field(value: self.height, fieldNumber: 6)
    }
    if self.simulcast != false {
      try visitor.visitSingularBoolField(value: self.simulcast, fieldNumber: 7)
    }
    if self.disableDtx != false {
      try visitor.visitSingularBoolField(value: self.disableDtx, fieldNumber: 8)
    }
    if self.source != .unknown {
      try visitor.visitSingularEnumField(value: self.source, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_TrackInfo, rhs: Livekit_TrackInfo) -> Bool {
    if lhs.sid != rhs.sid {return false}
    if lhs.type != rhs.type {return false}
    if lhs.name != rhs.name {return false}
    if lhs.muted != rhs.muted {return false}
    if lhs.width != rhs.width {return false}
    if lhs.height != rhs.height {return false}
    if lhs.simulcast != rhs.simulcast {return false}
    if lhs.disableDtx != rhs.disableDtx {return false}
    if lhs.source != rhs.source {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_DataPacket: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DataPacket"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "kind"),
    2: .same(proto: "user"),
    3: .same(proto: "speaker"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.kind) }()
      case 2: try {
        var v: Livekit_UserPacket?
        var hadOneofValue = false
        if let current = self.value {
          hadOneofValue = true
          if case .user(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.value = .user(v)
        }
      }()
      case 3: try {
        var v: Livekit_ActiveSpeakerUpdate?
        var hadOneofValue = false
        if let current = self.value {
          hadOneofValue = true
          if case .speaker(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.value = .speaker(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.kind != .reliable {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 1)
    }
    switch self.value {
    case .user?: try {
      guard case .user(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .speaker?: try {
      guard case .speaker(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_DataPacket, rhs: Livekit_DataPacket) -> Bool {
    if lhs.kind != rhs.kind {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_DataPacket.Kind: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RELIABLE"),
    1: .same(proto: "LOSSY"),
  ]
}

extension Livekit_ActiveSpeakerUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ActiveSpeakerUpdate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "speakers"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.speakers) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.speakers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.speakers, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_ActiveSpeakerUpdate, rhs: Livekit_ActiveSpeakerUpdate) -> Bool {
    if lhs.speakers != rhs.speakers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_SpeakerInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SpeakerInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sid"),
    2: .same(proto: "level"),
    3: .same(proto: "active"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sid) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.level) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.active) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sid.isEmpty {
      try visitor.visitSingularStringField(value: self.sid, fieldNumber: 1)
    }
    if self.level != 0 {
      try visitor.visitSingularFloatField(value: self.level, fieldNumber: 2)
    }
    if self.active != false {
      try visitor.visitSingularBoolField(value: self.active, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_SpeakerInfo, rhs: Livekit_SpeakerInfo) -> Bool {
    if lhs.sid != rhs.sid {return false}
    if lhs.level != rhs.level {return false}
    if lhs.active != rhs.active {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_UserPacket: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UserPacket"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "participant_sid"),
    2: .same(proto: "payload"),
    3: .standard(proto: "destination_sids"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.participantSid) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.payload) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.destinationSids) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.participantSid.isEmpty {
      try visitor.visitSingularStringField(value: self.participantSid, fieldNumber: 1)
    }
    if !self.payload.isEmpty {
      try visitor.visitSingularBytesField(value: self.payload, fieldNumber: 2)
    }
    if !self.destinationSids.isEmpty {
      try visitor.visitRepeatedStringField(value: self.destinationSids, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_UserPacket, rhs: Livekit_UserPacket) -> Bool {
    if lhs.participantSid != rhs.participantSid {return false}
    if lhs.payload != rhs.payload {return false}
    if lhs.destinationSids != rhs.destinationSids {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}