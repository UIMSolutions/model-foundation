module models.foundation.crm.projects.service_automation.transactions.categories.classification;

@safe:
import models.foundation;

// Entity used to associate a category broadly as time, expense or material.
class DTransactionCategoryClassificationEntity : DOOPEntity {
  mixin(EntityThis!("TransactionCategoryClassificationEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        StateCodeAttribute, // Status of the Transaction Category Classification
        StatusCodeAttribute // Reason for the status of the Transaction Category Classification
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created.
        "transactionCategory": StringAttribute, //
        "transactionClassification": StringAttribute, //
        "transactionClassification_display": StringAttribute, //
      ])
      .registerPath("foundation_transaction.category.classifications");
  }
}
mixin(EntityCalls!("JournalEntity"));

version(test_model_foundation) {
  unittest {
    
    assert(TransactionCategoryClassificationEntity);

  auto entity = TransactionCategoryClassificationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}