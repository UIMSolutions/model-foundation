module models.foundation.crm.projects.service_automation.journals.journal;

@safe:
import models.foundation;

// Unposted business transactions, for example, time and expense.
class DJournalEntity : DOOPEntity {
  mixin(EntityThis!("JournalEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "ownerId": UUIDAttribute, // Owner Id
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "journalId": UUIDAttribute, // Unique identifier for entity instances
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity.
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located.
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.
        "defaultProject": StringAttribute, // 
        "isPosted": BooleanAttribute, // Shows if the journal has been submitted.
      ])
      .registerPath("foundation_journals");
  }
}
mixin(EntityCalls!("JournalEntity"));

unittest {
  version(test_model_foundation) {
    
    assert(JournalEntity);

  auto entity = JournalEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}