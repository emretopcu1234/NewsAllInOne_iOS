//
//  FavoriteWebsiteItem+CoreDataProperties.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 8.01.2022.
//
//

import Foundation
import CoreData


extension FavoriteWebsiteItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteWebsiteItem> {
        return NSFetchRequest<FavoriteWebsiteItem>(entityName: "FavoriteWebsiteItem")
    }

    @NSManaged public var id: String
    @NSManaged public var url: String
    @NSManaged public var image: String

}

extension FavoriteWebsiteItem : Identifiable {

}
