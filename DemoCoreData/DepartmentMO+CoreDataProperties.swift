//
//  DepartmentMO+CoreDataProperties.swift
//  DemoCoreData
//
//  Created by Le Doan Kien on 9/12/17.
//  Copyright © 2017 ldkien. All rights reserved.
//

import Foundation
import CoreData


extension DepartmentMO {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DepartmentMO> {
        return NSFetchRequest<DepartmentMO>(entityName: "Department")
    }

    @NSManaged public var address: String?
    @NSManaged public var name: String?
    @NSManaged public var zip_code: Int16
    @NSManaged public var city: String?
    @NSManaged public var employees: NSSet?

}

// MARK: Generated accessors for employees
extension DepartmentMO {

    @objc(addEmployeesObject:)
    @NSManaged public func addToEmployees(_ value: EmployeeMO)

    @objc(removeEmployeesObject:)
    @NSManaged public func removeFromEmployees(_ value: EmployeeMO)

    @objc(addEmployees:)
    @NSManaged public func addToEmployees(_ values: NSSet)

    @objc(removeEmployees:)
    @NSManaged public func removeFromEmployees(_ values: NSSet)

}
