module models.foundation.crm.services.entitlements.product;


@safe:
import models.foundation;

// The root entity for portal Ideas.
class DEntitlementProductEntity : DOOPEntity {
  mixin(EntityThis!("EntitlementProductEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "entitlementProductId": UUIDAttribute, // Unique identifier of the contacts for the entitlements."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "productId": UUIDAttribute, // 
        "entitlementId": UUIDAttribute, // 
      ])
      .registerPath("foundation_crm.services.entitlements.products");
  }
}
mixin(EntityCalls!("EntitlementProductEntity"));

unittest {
  version(test_model_foundation) {
    
    assert(EntitlementProductEntity);
  
    auto entity = EntitlementProductEntity;
    // auto repository = OOPFileRepository("./tests");
    /*  repository.create("entities", entity.entityClasses, entity.toJson);

      auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
      assert(json != Json(null), entity.id.toString~" not found");

      repository.cleanupConnections; */ 
  }
}