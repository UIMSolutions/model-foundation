module models.foundation.crm.projects.service_automation.expenses.category;

@safe:
import models.foundation;

// Main container that holds expense category information.
class DExpenseCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ExpenseCategoryEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Unique identifier of the delegate user who created the record.
        ModifiedOnBehalfByAttribute, // Unique identifier of the delegate user who modified the record.
        StateCodeAttribute, // Status of the Expense Category
        StatusCodeAttribute // Reason for the status of the Expense Category
      ])
      .addValues([
        "organizationId": UUIDAttribute, // Unique identifier for the organization
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "expenseCategoryuId": UUIDAttribute, // Select the Transaction Category associated with Expense Category.
        "expenseType": StringAttribute, // Enter the type of expense
        "expenseType_display": StringAttribute, // 
        "receiptRequired": StringAttribute, // Shows whether the expense entry requires a receipt.
        "receiptRequired_display": StringAttribute, // projectServiceAutomation
      ])
      .registerPath("foundation_expense.categories");
  }
}
mixin(EntityCalls!("ExpenseCategoryEntity"));

version(test_model_foundation) { unittest {
    
    assert(ExpenseCategoryEntity);

  auto entity = ExpenseCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}