module models.foundation.company;

@safe:
import models.foundation;

// Task performed, or to be performed, by a user. An activity is any action for which an entry can be made on a calendar.
class DCompanyEntity : DOOPEntity {
  mixin(EntityThis!("CompanyEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Company
        StatusCodeAttribute // Reason for the status of the Company
      ])
      .addValues([
        "createdOnBehalfId": UUIDAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfId": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "companyId": UUIDAttribute, // Unique identifier of the company."]),
        "companyType": StringAttribute, // The type of company."]),
        "companyType_display": StringAttribute // 
      ])
      .registerPath("foundation_companies");
  }
}
mixin(EntityCalls!("CompanyEntity"));

  unittest {
  version(test_model_foundation) {
    
    assert(CompanyEntity);

  auto entity = CompanyEntity;  
  // writeln("test.", entity.entityClasses, " -> ", entity.toJson);
  // // auto repository = OOPRepository("mongodb://127.0.0.1:27018/?safe=true").connect;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found"); 

  repository.cleanupConnections; */
  }
}