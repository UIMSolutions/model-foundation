module models.foundation.crm.projects.service_automation.transactions.categories.hierarchy_element;
@safe:
import models.foundation;

// Hierarchical relationship of the transaction category with a root node.
class DTransactionCategoryHierarchyElementEntity : DEntity {
  mixin(EntityThis!("TransactionCategoryHierarchyElementEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        OwnerIdAttribute,
        StateCodeAttribute, // Status of the Transaction Category Hierarchy Element
        StatusCodeAttribute // Reason for the status of the Transaction Category Hierarchy Element
      ]);      
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record.
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record.
        "organizationId": UUIDAttribute, // Unique identifier for the organization
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "childCategory": StringAttribute, // 
        "parentCategory": StringAttribute, // 
      ])
      .registerPath("foundation_transaction.category.hierarchy.elements");
  }
}
mixin(EntityCalls!("JournalEntity"));

version(test_model_foundation) { unittest {
    
    assert(TransactionCategoryHierarchyElementEntity);

    auto entity = TransactionCategoryHierarchyElementEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}