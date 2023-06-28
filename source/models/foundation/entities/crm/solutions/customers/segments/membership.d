module models.foundation.crm.solutions.customers.segments.membership;

@safe:
import models.foundation;

// Members participating in a given segment.
class DSegmentMembershipEntity : DEntity {
  mixin(EntityThis!("SegmentMembershipEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Segment Membership
        StatusCodeAttribute, //Reason for the status of the Segment Membership
      ])
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "customerProfileId": UUIDAttribute, // Customer Profile Id"]),
        "lastEvaluationDate": DateAttribute, // Latest date when a segment memberships is evaluated/refreshed."]),
        "segmentId": UUIDAttribute, // Segment identifiers customers are associated with."]),
        "segmentMembershipId": UUIDAttribute, // Unique identifier for entity instances"]),
        "version": StringAttribute, // Denotes latest version of the customer segment membership for manual tracking."]),
      ])
      .registerPath("foundation_segment.memberships");
  }
}
mixin(EntityCalls!("SegmentMembershipEntity"));

version(test_model_foundation) { unittest {
    
    assert(SegmentMembershipEntity);

    auto entity = SegmentMembershipEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}
