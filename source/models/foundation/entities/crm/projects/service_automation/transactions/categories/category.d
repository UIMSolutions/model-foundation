module models.foundation.crm.projects.service_automation.transactions.categories.category;

@safe:
import models.foundation;

// Business transaction categories to classify costs and revenue.
class DTransactionCategoryEntity : DOOPEntity {
  mixin(EntityThis!("TransactionConnectionEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        StateCodeAttribute, // Status of the Transaction Category
        StatusCodeAttribute // Reason for the status of the Transaction Category
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record.
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record.
        "organizationId": UUIDAttribute, // Unique identifier for the organization
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created.
        "billingType": StringAttribute, //Select the default billing type of project transactions in this category. Valid values are Chargeable, Non chargeable or Complimentary. Only chargeable transactions will add to an invoice total
        "billingType_display": StringAttribute, //
        "defaultUnit": StringAttribute, //
        "unitGroup": StringAttribute, //Select the unit schedule that is associated with the transaction category.
      ])
      .registerPath("foundation_transaction.categories");
  }
}
mixin(EntityCalls!("TransactionCategoryEntity"));

version(test_model_foundation) { unittest {
    
    assert(TransactionCategoryEntity);

  auto entity = TransactionCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}