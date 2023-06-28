module models.foundation.crm.services.resources.expansion;

@safe:
import models.foundation;

// 
class DAPLResourceExpansionEntity : DEntity {
  mixin(EntityThis!("APLResourceExpansionEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "resourceGroupExpansionId": UUIDAttribute, // Unique identifier of the resource expansion record."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "itemId": UUIDAttribute, // Item that is part of expansion of resource identified by object ID. One object ID can have many item IDs."]),
        "methodCode": StringAttribute, // Code for retrieval method."]),
        "methodCode_display": StringAttribute, // 
        "modifiedOn": StringAttribute, // Date and time when the record was last modified."]),
        "objectId": UUIDAttribute, // Object being expanded."]),
      ])
      .registerPath("foundation_crm.services.resources.expansions");
  }
}
mixin(EntityCalls!("APLResourceExpansionEntity"));

version(test_model_foundation) { unittest {
    
    assert(APLResourceExpansion);
  
    auto entity = APLResourceExpansion;
    // auto repository = OOPFileRepository("./tests");
    /* repository.create("entities", entity.entityClasses, entity.toJson);

    auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
    assert(json != Json(null), entity.id.toString~" not found");

    repository.cleanupConnections; */ 
  }
}
