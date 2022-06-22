module models.foundation.crm.services.entitlements.contract;

@safe:
import models.foundation;

// 
class DEntitlementContactEntity : DOOPEntity {
  mixin(EntityThis!("EntitlementContactEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "entitlementContactId": ContactIdAttribute, // Unique identifier of the contacts for the entitlements."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "contactId": ContactIdAttribute, // 
        "entitlementId": UUIDAttribute, // 
      ])
      .registerPath("foundation_crm.services.entitlements.contracts");
  }
}
mixin(EntityCalls!("EntitlementContactEntity")); 

unittest {
  version(test_model_foundation) {
    
    assert(EntitlementContactEntity);
  
  auto entity = EntitlementContactEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}