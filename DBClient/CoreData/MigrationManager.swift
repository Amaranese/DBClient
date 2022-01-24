

import CoreData

public protocol MigrationManagerDelegate: class {
    
    func migrationManager(_ migrationManager: MigrationManager, updateMigrationProgress: Float)
    func migrationManager(_ migrationManager: MigrationManager, mappingModelsForSourceModel: NSManagedObjectModel) -> [NSMappingModel]
    
}

public extension MigrationManagerDelegate {
    
    func migrationManager(_ migrationManager: MigrationManager, updateMigrationProgress: Float) {
    }
    
    func migrationManager(_ migrationManager: MigrationManager, mappingModelsForSourceModel: NSManagedObjectModel) -> [NSMappingModel] {
        return []
    }
    
}

public enum MigrationError: Error {
    case modelsNotFound
    case mappingModelNotFound
}

public protocol MigrationManager {

    var delegate: MigrationManagerDelegate? { get set }
    var bundle: Bundle { get set }
    
    func progressivelyMigrate(sourceStoreURL: URL, of type: String, to model: NSManagedObjectModel) throws
    
}
