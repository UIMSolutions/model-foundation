module models.foundation.crm.sales.competitors.product;

@safe:
import models.foundation;

// Association between a competitor and a product offered by the competitor.
class DAPLCompetitorProduct : DOOPEntity {
  mixin(EntityThis!("CompetitorProductEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttribute, // 
        "productId": UUIDAttribute, // 
      ])
      .registerPath("foundation_competitorProductEntity");
  }
}
mixin(EntityCalls!("CompetitorProductEntity"));

version(test_model_foundation) {
  unittest {
    
    assert(APLCompetitorProduct);

  auto entity = APLCompetitorProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}