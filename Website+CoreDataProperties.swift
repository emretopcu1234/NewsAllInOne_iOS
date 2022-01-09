//
//  Website+CoreDataProperties.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 8.01.2022.
//
//

import Foundation
import CoreData


extension Website {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Website> {
        return NSFetchRequest<Website>(entityName: "Website")
    }

    @NSManaged public var id: String?
    @NSManaged public var url: String?
    @NSManaged public var image: String?

}

extension Website : Identifiable {

}
