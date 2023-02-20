module models.foundation.crm.sales.competitors.sales_literature;

@safe:
import models.foundation;

// Association between a competitor and a product offered by the competitor.
class DCompetitorSalesLiteratureEntity : DOOPEntity {
  mixin(EntityThis!("CompetitorSalesLiteratureEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "competitorId": UUIDAttribute, // "])
      ])
      .registerPath("foundation_competitor.sales.literature");
  }
}
mixin(EntityCalls!("CompetitorSalesLiteratureEntity"));

unittest {
  version(test_model_foundation) {
    
    assert(APLCompetitorSalesLiterature);

    auto entity = APLCompetitorSalesLiterature;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}