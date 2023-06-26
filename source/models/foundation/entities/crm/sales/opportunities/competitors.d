module models.foundation.crm.sales.opportunities.competitors;

@safe:
import models.foundation;

// Association between a competitor and a product offered by the competitor.
class DOpportunityCompetitorEntity : DOOPEntity {
  mixin(EntityThis!("OpportunityCompetitorEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "opportunityCompetitorId": UUIDAttribute, // Unique identifier of the opportunity competitor."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttribute, // 
        "opportunityId": UUIDAttribute, // 
      ])
      .registerPath("foundation_crm.sales.opportunities.competitors");
  }
}
mixin(EntityCalls!("OpportunityCompetitorEntity"));

version(test_model_foundation) { unittest {
    
    assert(OpportunityCompetitorEntity);

    auto entity = OpportunityCompetitorEntity;
  // auto repository = OOPFileRepository("./tests");
  /*   repository.create("entities", entity.entityClasses, entity.toJson);

    auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
    assert(json != Json(null), entity.id.toString~" not found");
    
    repository.cleanupConnections; */
  }
}