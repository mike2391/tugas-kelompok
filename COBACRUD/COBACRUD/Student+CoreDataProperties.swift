//
//  Student+CoreDataProperties.swift
//  COBACRUD
//
//  Created by prk on 10/01/23.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var school: String?
    @NSManaged public var name: String?
    @NSManaged public var std: String?

}

extension Student : Identifiable {

}
