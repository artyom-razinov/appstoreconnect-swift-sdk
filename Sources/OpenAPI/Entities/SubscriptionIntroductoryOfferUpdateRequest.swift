// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionIntroductoryOfferUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case subscriptionIntroductoryOffers
		}

		public struct Attributes: Codable {
			public var endDate: String?

			public init(endDate: String? = nil) {
				self.endDate = endDate
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}
	}

	public init(data: Data) {
		self.data = data
	}
}