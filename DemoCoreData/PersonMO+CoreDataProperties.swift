//
//  PersonMO+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Le Doan Kien on 9/12/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import Foundation
import CoreData


extension PersonMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonMO> {
        return NSFetchRequest<PersonMO>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var date_of_birth: NSDate?

}
