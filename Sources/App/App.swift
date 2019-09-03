//
//  App.swift
//  BitriseAPI iOS
//
//  Created by Joel Trew on 11/02/2018.
//

import Foundation

/// Model describing a specific `App` in the Bitrise system
public struct App: Decodable {

    public var avatarUrl: URL
    // If this app is disabled
    public var isDisabled: Bool
    public var isPublic: Bool
    public var owner: Owner
    // ios, android etc,
    // Todo: - Make an enum if we defined list of project types
    public var projectType: String
    //Which service hosts the source code for the app i.e github
    public var provider: String
    // Name of the owner of the repo
    public var repoOwner: String
    // A name of the repo without the owner namespace `MyCoolApp`
    public var repoSlug: String
    // The repo url where the source code can be found
    public var repoUrl: URL
    // Unique Identifer of an app
    public var slug: String
    public var status: Int
    // The title of an app
    public var title: String


    public struct Owner: Codable {

        public var accountType: String
        public var name: String
        public var slug: String

        private enum CodingKeys: String, CodingKey {
            case accountType = "account_type"
            case name
            case slug
        }
    }

    private enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case isDisabled = "is_disabled"
        case isPublic = "is_public"
        case owner
        case projectType = "project_type"
        case provider
        case repoOwner = "repo_owner"
        case repoSlug = "repo_slug"
        case repoUrl = "repo_url"
        case slug
        case status
        case title
    }
}
