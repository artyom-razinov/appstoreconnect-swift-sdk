// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID.Relationships {
	public var appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease {
		AppStoreVersionPhasedRelease(path: path + "/appStoreVersionPhasedRelease")
	}

	public struct AppStoreVersionPhasedRelease {
		/// Path: `/v1/appStoreVersions/{id}/relationships/appStoreVersionPhasedRelease`
		public let path: String
	}
}
