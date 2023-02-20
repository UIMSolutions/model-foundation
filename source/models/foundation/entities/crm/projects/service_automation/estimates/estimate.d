module models.foundation.crm.projects.service_automation.estimates.estimate;

@safe:
import models.foundation;

// Labor, cost, and revenue estimates for a project.
class DEstimateEntity : DOOPEntity {
  mixin(EntityThis!("EstimateEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Estimate
        StatusCodeAttribute // Reason for the status of the Estimate
      ])
      .addValues([ // individual values
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "estimateId": UUIDAttribute, // Unique identifier for entity instances
        "estimateHeaderType": StringAttribute, // Select the type of estimate.
        "estimateHeaderType_display": StringAttribute, // 
        "project": StringAttribute, // Select the name of the project.
      ])
      .registerPath("foundation_estimates");
  }
}
mixin(EntityCalls!("EstimateEntity"));

version(test_model_foundation) { unittest {
    assert(EstimateEntity);

  auto entity = EstimateEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}