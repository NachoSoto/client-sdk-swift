import SwiftUI
import WebRTC
import OrderedCollections

open class ObservableRoom: ObservableObject, RoomDelegate {

    public let room: Room

    @Published public var participants = OrderedDictionary<Sid, ObservableParticipant>()

    public var allParticipants: OrderedDictionary<Sid, ObservableParticipant> {
        var result = participants
        if let localParticipant = room.localParticipant {
            result.updateValue(ObservableParticipant(localParticipant),
                               forKey: localParticipant.sid,
                               insertingAt: 0)
        }
        return result
    }

    @Published public var localVideo: LocalTrackPublication?
    @Published public var localAudio: LocalTrackPublication?
    @Published public var localScreen: LocalTrackPublication?

    public init(_ room: Room) {
        self.room = room
        room.add(delegate: self)

        if room.remoteParticipants.isEmpty {
            self.participants = [:]
        } else {
            // create initial participants
            for element in room.remoteParticipants {
                self.participants[element.key] = ObservableParticipant(element.value)
            }
        }
    }

    deinit {
        // cameraTrack?.stop()
        room.remove(delegate: self)
    }

    open func room(_ room: Room,
                   participantDidJoin participant: RemoteParticipant) {
        DispatchQueue.main.async {
            self.participants[participant.sid] = ObservableParticipant(participant)
        }
    }

    open func room(_ room: Room,
                   participantDidLeave participant: RemoteParticipant) {
        DispatchQueue.main.async {
            self.participants.removeValue(forKey: participant.sid)
        }
    }

    open func room(_ room: Room, participant: RemoteParticipant?, didReceive data: Data) {
        //
    }
}