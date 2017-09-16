//
//  EmployeeMO+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Le Doan Kien on 9/12/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import Foundation
import CoreData


extension EmployeeMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<EmployeeMO> {
        return NSFetchRequest<EmployeeMO>(entityName: "Employee")
    }

    @NSManaged public var hire_date: NSDate?
    @NSManaged public var id: Int16
    @NSManaged public var isManager: Bool
    @NSManaged public var title: String?
    @NSManaged public var department: DepartmentMO?

}
