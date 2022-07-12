// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.Builds.WithID.Relationships {
	public var preReleaseVersion: PreReleaseVersion {
		PreReleaseVersion(path: path + "/preReleaseVersion")
	}

	public struct PreReleaseVersion {
		/// Path: `/v1/builds/{id}/relationships/preReleaseVersion`
		public let path: String
	}
}