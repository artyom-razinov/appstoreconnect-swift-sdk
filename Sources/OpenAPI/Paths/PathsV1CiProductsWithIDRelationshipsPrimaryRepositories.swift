// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiProducts.WithID.Relationships {
	public var primaryRepositories: PrimaryRepositories {
		PrimaryRepositories(path: path + "/primaryRepositories")
	}

	public struct PrimaryRepositories {
		/// Path: `/v1/ciProducts/{id}/relationships/primaryRepositories`
		public let path: String
	}
}