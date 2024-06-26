// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterMatchmakingQueueSizesV1MetricResponse: Codable {
	public var data: [Datum]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public struct Datum: Codable {
		public var dataPoints: DataPoints?
		public var granularity: Granularity?

		public struct DataPoints: Codable {
			public var start: Date?
			public var end: Date?
			public var values: Values?

			public struct Values: Codable {
				public var count: Int?
				public var averageNumberOfRequests: Double?
				public var p50NumberOfRequests: Double?
				public var p95NumberOfRequests: Double?

				public init(count: Int? = nil, averageNumberOfRequests: Double? = nil, p50NumberOfRequests: Double? = nil, p95NumberOfRequests: Double? = nil) {
					self.count = count
					self.averageNumberOfRequests = averageNumberOfRequests
					self.p50NumberOfRequests = p50NumberOfRequests
					self.p95NumberOfRequests = p95NumberOfRequests
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.count = try values.decodeIfPresent(Int.self, forKey: "count")
					self.averageNumberOfRequests = try values.decodeIfPresent(Double.self, forKey: "averageNumberOfRequests")
					self.p50NumberOfRequests = try values.decodeIfPresent(Double.self, forKey: "p50NumberOfRequests")
					self.p95NumberOfRequests = try values.decodeIfPresent(Double.self, forKey: "p95NumberOfRequests")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(count, forKey: "count")
					try values.encodeIfPresent(averageNumberOfRequests, forKey: "averageNumberOfRequests")
					try values.encodeIfPresent(p50NumberOfRequests, forKey: "p50NumberOfRequests")
					try values.encodeIfPresent(p95NumberOfRequests, forKey: "p95NumberOfRequests")
				}
			}

			public init(start: Date? = nil, end: Date? = nil, values: Values? = nil) {
				self.start = start
				self.end = end
				self.values = values
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.start = try values.decodeIfPresent(Date.self, forKey: "start")
				self.end = try values.decodeIfPresent(Date.self, forKey: "end")
				self.values = try values.decodeIfPresent(Values.self, forKey: "values")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(start, forKey: "start")
				try values.encodeIfPresent(end, forKey: "end")
				try values.encodeIfPresent(self.values, forKey: "values")
			}
		}

		public enum Granularity: String, Codable, CaseIterable {
			case p1d = "P1D"
			case pt1h = "PT1H"
			case pt15m = "PT15M"
		}

		public init(dataPoints: DataPoints? = nil, granularity: Granularity? = nil) {
			self.dataPoints = dataPoints
			self.granularity = granularity
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.dataPoints = try values.decodeIfPresent(DataPoints.self, forKey: "dataPoints")
			self.granularity = try values.decodeIfPresent(Granularity.self, forKey: "granularity")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(dataPoints, forKey: "dataPoints")
			try values.encodeIfPresent(granularity, forKey: "granularity")
		}
	}

	public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([Datum].self, forKey: "data")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
