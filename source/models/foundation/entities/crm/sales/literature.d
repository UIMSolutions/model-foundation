module models.foundation.crm.sales.literature;

@safe:
import models.foundation;

// Storage of sales literature, which may contain one or more documents.
class DAPLSalesLiterature : DOOPEntity {
  mixin(EntityThis!("APLSalesLiterature"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "employeeContactId": ContactIdAttribute, // Choose the user who is responsible for maintaining or updating the sales literature."]),
        "expirationDate": DateAttribute, // Enter the expiration date or last day the sales literature can be distributed."]),
        "hasAttachments": StringAttribute, // Tells whether the sales literature has one or more attachments."]),
        "isCustomerViewable": BooleanAttribute, // Select whether the sales literature can be distributed to prospects and customers or is for internal use only."]),
        "keyWords": StringAttribute, // Type one or more topics or keywords that can be used to search for the sales literature."]),
        "literatureTypeCode": StringAttribute, // Select a category or type to help others identify the intended use of the sales literature."]),
        "literatureTypeCode_display": StringAttribute, // 
        "subjectId": UUIDAttribute, // Choose the subject for the sales literature to relate the item to a product or business group. Administrators can configure subjects under Business Management in the Settings area."]),
        "entityImageId": UUIDAttribute, // 
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      ])
      .registerPath("foundation_sales.literature");
  }
}
mixin(EntityCalls!("APLSalesLiterature"));

version(test_model_foundation) { unittest {
    
    assert(APLSalesLiterature);
  
    auto entity = APLSalesLiterature;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}