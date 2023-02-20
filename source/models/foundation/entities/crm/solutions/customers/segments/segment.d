module models.foundation.crm.solutions.customers.segments.segment;

@safe:
import models.foundation;

// Defines a group of members that exhibit common traits.
class DSegmentEntity : DOOPEntity {
  mixin(EntityThis!("SegmentEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Segment"]),
        StatusCodeAttribute, //Reason for the status of the Segment"]),
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
        "lastEvaluationDate": DateAttribute, // Latest date when segments are evaluated/refreshed."]),
        "memberCount": StringAttribute, // Count of customers/members associated with a segment."]),
        "queryDefinition": StringAttribute, // Segment definition including groups, filters, conditions etc."]),
        "segmentId": UUIDAttribute, // Unique identifier for entity instances"]),
        "segmentType": StringAttribute, // Segment type."]),
        "segmentType_display": StringAttribute, // 
        "version": StringAttribute, // Denotes latest version of a segment for manual tracking."]),
      ])
      .registerPath("foundation_segments");
  }
}
mixin(EntityCalls!("SegmentEntity"));

version(test_model_foundation) { unittest {
    
    assert(SegmentEntity);

  auto entity = SegmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
