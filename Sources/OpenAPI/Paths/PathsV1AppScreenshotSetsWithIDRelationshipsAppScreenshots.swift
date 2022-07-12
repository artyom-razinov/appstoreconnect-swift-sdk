// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.AppScreenshotSets.WithID.Relationships {
	public var appScreenshots: AppScreenshots {
		AppScreenshots(path: path + "/appScreenshots")
	}

	public struct AppScreenshots {
		/// Path: `/v1/appScreenshotSets/{id}/relationships/appScreenshots`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppScreenshotSetAppScreenshotsLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppScreenshotSetAppScreenshotsLinkagesRequest) -> Request<Void> {
			.patch(path, body: body)
		}
	}
}