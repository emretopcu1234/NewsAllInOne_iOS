//
//  FavoriteWebsite+CoreDataProperties.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 8.01.2022.
//
//

import Foundation
import CoreData


extension FavoriteWebsite {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteWebsite> {
        return NSFetchRequest<FavoriteWebsite>(entityName: "FavoriteWebsite")
    }

    @NSManaged public var id: String?
    @NSManaged public var url: String?
    @NSManaged public var image: String?

}

extension FavoriteWebsite : Identifiable {

}
