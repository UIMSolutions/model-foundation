module models.foundation.crm.sales.discounts.list;

@safe:
import models.foundation;

// Type of discount specified as either a percentage or an amount.
class DDiscountListEntity : DOOPEntity {
  mixin(EntityThis!("DiscountListEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        StateCodeAttribute, // Status of the discount list.
        StatusCodeAttribute // Reason for the status of the discount list.
      ]);    
      .addValues([
        "discountTypeId": UUIDAttribute, // Unique identifier of the discount list."]), 
        "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the discounttype."]), 
        "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the discounttype."]), 
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]), 
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]), 
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]), 
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]), 
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]), 
        "isAmountType": BooleanAttribute, // Information about whether the discount list amounts are specified as monetary amounts or percentages."]), 
        "transactionCurrencyId": UUIDAttribute, // Unique identifier of the currency associated with the discount type."]), 
      ])
      .registerPath("foundation_discount.lists");
  }
}
mixin(EntityCalls!("DiscountListEntity"));

unittest {
  version(test_model_foundation) {
    assert(DiscountListEntity);
  
    auto entity = DiscountListEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}