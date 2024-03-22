//
//  Service.swift
//  ServiceTracker
//
//  Created by Timothy Bryant on 3/22/24.
//

import Foundation
import SwiftData

@Model
class Service {
    enum ServiceType: String {
        case service = "Service"
        case plugin = "Plug-In"
    }
    
    enum LicenseType: String {
        case single = "Single User"
        case multi = "Multi-User"
        case floating = "Floating"
    }
    
    let id = UUID()
    var name: String = ""
    var vendor: String = ""
    var type: ServiceType = ServiceType.service
    
    var seats: Int = 0
    var usersSeated: [User]?
    
    var descShort: String = ""
    var descDetail: String = ""
    
    var salesRepName: String = ""
    var salesRepEmail: String = ""
    var salesRepPhone: String = ""
    
    var lastPurchaseDate: Date? // If this is empty it should be looked at as a spec
    var lastPurchasePrice: Decimal?
    var renewalDate: Date = Date.now
    var renewalPrice: Decimal?
    var paymentMethod: String = ""
    
    var shouldCancel: Bool = false
    var cancelReason: String = ""
    var isArchived: Bool = false // Default query should filter out archived services
    
    var notes: String = ""
    
    // For plug-ins only
    var licenseType: LicenseType = LicenseType.single
    var licenseKey: String = ""
    
    // INITIALIZER
    init(name: String, vendor: String, type: ServiceType, seats: Int, usersSeated: [User]? = nil, descShort: String, descDetail: String, salesRepName: String, salesRepEmail: String, salesRepPhone: String, lastPurchaseDate: Date? = nil, lastPurchasePrice: Decimal? = nil, renewalDate: Date, renewalPrice: Decimal? = nil, paymentMethod: String, shouldCancel: Bool, cancelReason: String, isArchived: Bool, notes: String, licenseType: LicenseType, licenseKey: String) {
        self.name = name
        self.vendor = vendor
        self.type = type
        self.seats = seats
        self.usersSeated = usersSeated
        self.descShort = descShort
        self.descDetail = descDetail
        self.salesRepName = salesRepName
        self.salesRepEmail = salesRepEmail
        self.salesRepPhone = salesRepPhone
        self.lastPurchaseDate = lastPurchaseDate
        self.lastPurchasePrice = lastPurchasePrice
        self.renewalDate = renewalDate
        self.renewalPrice = renewalPrice
        self.paymentMethod = paymentMethod
        self.shouldCancel = shouldCancel
        self.cancelReason = cancelReason
        self.isArchived = isArchived
        self.notes = notes
        self.licenseType = licenseType
        self.licenseKey = licenseKey
    }
    
    // Computer prroperties for enewsThisQuarter
    var seatsUsed: Int {
        usersSeated?.count ?? 0
    }
    
    var seatsAvailable: Int {
        seats - (usersSeated?.count ?? 0)
    }
    
    var renewsThisQuarter: Bool {
        renewalDate >= Date.now && renewalDate <= Date.now + (86_400 + 92)
    }
}
