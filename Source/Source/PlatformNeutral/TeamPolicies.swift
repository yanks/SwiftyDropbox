///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

import Foundation

/// Datatypes and serializers for the team_policies namespace
open class TeamPolicies {
    /// The EmmState union
    public enum EmmState: CustomStringConvertible {
        /// Emm token is disabled
        case disabled
        /// Emm token is optional
        case optional
        /// Emm token is required
        case required
        /// An unspecified error.
        case other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(EmmStateSerializer().serialize(self)))"
        }
    }
    open class EmmStateSerializer: JSONSerializer {
        public init() { }
        open func serialize(_ value: EmmState) -> JSON {
            switch value {
                case .disabled:
                    var d = [String: JSON]()
                    d[".tag"] = .str("disabled")
                    return .dictionary(d)
                case .optional:
                    var d = [String: JSON]()
                    d[".tag"] = .str("optional")
                    return .dictionary(d)
                case .required:
                    var d = [String: JSON]()
                    d[".tag"] = .str("required")
                    return .dictionary(d)
                case .other:
                    var d = [String: JSON]()
                    d[".tag"] = .str("other")
                    return .dictionary(d)
            }
        }
        open func deserialize(_ json: JSON) -> EmmState {
            switch json {
                case .dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "disabled":
                            return EmmState.disabled
                        case "optional":
                            return EmmState.optional
                        case "required":
                            return EmmState.required
                        case "other":
                            return EmmState.other
                        default:
                            return EmmState.other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }

    /// Policy governing which shared folders a team member can join.
    public enum SharedFolderJoinPolicy: CustomStringConvertible {
        /// Team members can only join folders shared by teammates.
        case fromTeamOnly
        /// Team members can join any shared folder, including those shared by users outside the team.
        case fromAnyone
        /// An unspecified error.
        case other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(SharedFolderJoinPolicySerializer().serialize(self)))"
        }
    }
    open class SharedFolderJoinPolicySerializer: JSONSerializer {
        public init() { }
        open func serialize(_ value: SharedFolderJoinPolicy) -> JSON {
            switch value {
                case .fromTeamOnly:
                    var d = [String: JSON]()
                    d[".tag"] = .str("from_team_only")
                    return .dictionary(d)
                case .fromAnyone:
                    var d = [String: JSON]()
                    d[".tag"] = .str("from_anyone")
                    return .dictionary(d)
                case .other:
                    var d = [String: JSON]()
                    d[".tag"] = .str("other")
                    return .dictionary(d)
            }
        }
        open func deserialize(_ json: JSON) -> SharedFolderJoinPolicy {
            switch json {
                case .dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "from_team_only":
                            return SharedFolderJoinPolicy.fromTeamOnly
                        case "from_anyone":
                            return SharedFolderJoinPolicy.fromAnyone
                        case "other":
                            return SharedFolderJoinPolicy.other
                        default:
                            return SharedFolderJoinPolicy.other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }

    /// Policy governing who can be a member of a folder shared by a team member.
    public enum SharedFolderMemberPolicy: CustomStringConvertible {
        /// Only a teammate can be a member of a folder shared by a team member.
        case team
        /// Anyone can be a member of a folder shared by a team member.
        case anyone
        /// An unspecified error.
        case other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(SharedFolderMemberPolicySerializer().serialize(self)))"
        }
    }
    open class SharedFolderMemberPolicySerializer: JSONSerializer {
        public init() { }
        open func serialize(_ value: SharedFolderMemberPolicy) -> JSON {
            switch value {
                case .team:
                    var d = [String: JSON]()
                    d[".tag"] = .str("team")
                    return .dictionary(d)
                case .anyone:
                    var d = [String: JSON]()
                    d[".tag"] = .str("anyone")
                    return .dictionary(d)
                case .other:
                    var d = [String: JSON]()
                    d[".tag"] = .str("other")
                    return .dictionary(d)
            }
        }
        open func deserialize(_ json: JSON) -> SharedFolderMemberPolicy {
            switch json {
                case .dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "team":
                            return SharedFolderMemberPolicy.team
                        case "anyone":
                            return SharedFolderMemberPolicy.anyone
                        case "other":
                            return SharedFolderMemberPolicy.other
                        default:
                            return SharedFolderMemberPolicy.other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }

    /// Policy governing the visibility of newly created shared links.
    public enum SharedLinkCreatePolicy: CustomStringConvertible {
        /// By default, anyone can access newly created shared links. No login will be required to access the shared
        /// links unless overridden.
        case defaultPublic
        /// By default, only members of the same team can access newly created shared links. Login will be required to
        /// access the shared links unless overridden.
        case defaultTeamOnly
        /// Only members of the same team can access newly created shared links. Login will be required to access the
        /// shared links.
        case teamOnly
        /// An unspecified error.
        case other

        public var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(SharedLinkCreatePolicySerializer().serialize(self)))"
        }
    }
    open class SharedLinkCreatePolicySerializer: JSONSerializer {
        public init() { }
        open func serialize(_ value: SharedLinkCreatePolicy) -> JSON {
            switch value {
                case .defaultPublic:
                    var d = [String: JSON]()
                    d[".tag"] = .str("default_public")
                    return .dictionary(d)
                case .defaultTeamOnly:
                    var d = [String: JSON]()
                    d[".tag"] = .str("default_team_only")
                    return .dictionary(d)
                case .teamOnly:
                    var d = [String: JSON]()
                    d[".tag"] = .str("team_only")
                    return .dictionary(d)
                case .other:
                    var d = [String: JSON]()
                    d[".tag"] = .str("other")
                    return .dictionary(d)
            }
        }
        open func deserialize(_ json: JSON) -> SharedLinkCreatePolicy {
            switch json {
                case .dictionary(let d):
                    let tag = Serialization.getTag(d)
                    switch tag {
                        case "default_public":
                            return SharedLinkCreatePolicy.defaultPublic
                        case "default_team_only":
                            return SharedLinkCreatePolicy.defaultTeamOnly
                        case "team_only":
                            return SharedLinkCreatePolicy.teamOnly
                        case "other":
                            return SharedLinkCreatePolicy.other
                        default:
                            return SharedLinkCreatePolicy.other
                    }
                default:
                    fatalError("Failed to deserialize")
            }
        }
    }

    /// Policies governing team members.
    open class TeamMemberPolicies: CustomStringConvertible {
        /// Policies governing sharing.
        open let sharing: TeamPolicies.TeamSharingPolicies
        /// This describes the Enterprise Mobility Management (EMM) state for this team. This information can be used to
        /// understand if an organization is integrating with a third-party EMM vendor to further manage and apply
        /// restrictions upon the team's Dropbox usage on mobile devices. This is a new feature and in the future we'll
        /// be adding more new fields and additional documentation.
        open let emmState: TeamPolicies.EmmState
        public init(sharing: TeamPolicies.TeamSharingPolicies, emmState: TeamPolicies.EmmState) {
            self.sharing = sharing
            self.emmState = emmState
        }
        open var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(TeamMemberPoliciesSerializer().serialize(self)))"
        }
    }
    open class TeamMemberPoliciesSerializer: JSONSerializer {
        public init() { }
        open func serialize(_ value: TeamMemberPolicies) -> JSON {
            let output = [ 
            "sharing": TeamPolicies.TeamSharingPoliciesSerializer().serialize(value.sharing),
            "emm_state": TeamPolicies.EmmStateSerializer().serialize(value.emmState),
            ]
            return .dictionary(output)
        }
        open func deserialize(_ json: JSON) -> TeamMemberPolicies {
            switch json {
                case .dictionary(let dict):
                    let sharing = TeamPolicies.TeamSharingPoliciesSerializer().deserialize(dict["sharing"] ?? .null)
                    let emmState = TeamPolicies.EmmStateSerializer().deserialize(dict["emm_state"] ?? .null)
                    return TeamMemberPolicies(sharing: sharing, emmState: emmState)
                default:
                    fatalError("Type error deserializing")
            }
        }
    }

    /// Policies governing sharing within and outside of the team.
    open class TeamSharingPolicies: CustomStringConvertible {
        /// Who can join folders shared by team members.
        open let sharedFolderMemberPolicy: TeamPolicies.SharedFolderMemberPolicy
        /// Which shared folders team members can join.
        open let sharedFolderJoinPolicy: TeamPolicies.SharedFolderJoinPolicy
        /// What is the visibility of newly created shared links.
        open let sharedLinkCreatePolicy: TeamPolicies.SharedLinkCreatePolicy
        public init(sharedFolderMemberPolicy: TeamPolicies.SharedFolderMemberPolicy, sharedFolderJoinPolicy: TeamPolicies.SharedFolderJoinPolicy, sharedLinkCreatePolicy: TeamPolicies.SharedLinkCreatePolicy) {
            self.sharedFolderMemberPolicy = sharedFolderMemberPolicy
            self.sharedFolderJoinPolicy = sharedFolderJoinPolicy
            self.sharedLinkCreatePolicy = sharedLinkCreatePolicy
        }
        open var description: String {
            return "\(SerializeUtil.prepareJSONForSerialization(TeamSharingPoliciesSerializer().serialize(self)))"
        }
    }
    open class TeamSharingPoliciesSerializer: JSONSerializer {
        public init() { }
        open func serialize(_ value: TeamSharingPolicies) -> JSON {
            let output = [ 
            "shared_folder_member_policy": TeamPolicies.SharedFolderMemberPolicySerializer().serialize(value.sharedFolderMemberPolicy),
            "shared_folder_join_policy": TeamPolicies.SharedFolderJoinPolicySerializer().serialize(value.sharedFolderJoinPolicy),
            "shared_link_create_policy": TeamPolicies.SharedLinkCreatePolicySerializer().serialize(value.sharedLinkCreatePolicy),
            ]
            return .dictionary(output)
        }
        open func deserialize(_ json: JSON) -> TeamSharingPolicies {
            switch json {
                case .dictionary(let dict):
                    let sharedFolderMemberPolicy = TeamPolicies.SharedFolderMemberPolicySerializer().deserialize(dict["shared_folder_member_policy"] ?? .null)
                    let sharedFolderJoinPolicy = TeamPolicies.SharedFolderJoinPolicySerializer().deserialize(dict["shared_folder_join_policy"] ?? .null)
                    let sharedLinkCreatePolicy = TeamPolicies.SharedLinkCreatePolicySerializer().deserialize(dict["shared_link_create_policy"] ?? .null)
                    return TeamSharingPolicies(sharedFolderMemberPolicy: sharedFolderMemberPolicy, sharedFolderJoinPolicy: sharedFolderJoinPolicy, sharedLinkCreatePolicy: sharedLinkCreatePolicy)
                default:
                    fatalError("Type error deserializing")
            }
        }
    }

}