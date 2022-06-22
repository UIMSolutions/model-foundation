module models.foundation.bookables.resources.categories.category;

@safe:
import models.foundation;

// Categorize resources that have capacity into categories such as roles.
class DAPLBookableResourceCategory : DOOPEntity {
  mixin(EntityThis!("APLBookableResourceCategory"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        StateCodeAttribute, // Status of the Resource Category
        StatusCodeAttribute // Reason for the status of the Resource Category
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]), 
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]), 
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]), 
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]), 
        "ownerId": UUIDAttribute, // Owner Id"]), 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]), 
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]), 
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]), 
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]), 
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]), 
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]), 
        "bookableResourceCategoryId": UUIDAttribute, // Unique identifier of the resource category."]), 
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcecategory with respect to the base currency."]), 
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceCategory with respect to the base currency."]), 
      ])
      .registerPath("foundation_bookable.resource.categories");
  }
}
mixin(EntityCalls!("APLBookableResourceCategory"));

unittest {
  version(test_model_foundation) {
    
    assert(APLBookableResourceCategory);
  
  auto entity = APLBookableResourceCategory;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}