module models.foundation.bookables.resources.characteristic;

@safe:
import models.foundation;

// Associates resources with their characteristics and specifies the proficiency level of a resource for that characteristic.
class DBookableResourceCharacteristicEntity : DOOPEntity {
  mixin(EntityThis!("BookableResourceCharacteristicEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Bookable Resource Characteristic
        StatusCodeAttribute // Reason for the status of the Bookable Resource Characteristic
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "bookableResourceCharacteristicId": UUIDAttribute, // Unique identifier of the resource characteristic."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "characteristic": StringAttribute, // Choose the characteristic to associate with the resource."]),
        "ratingValue": StringAttribute, // Select a rating value that represents the evaluation of a characteristic for a particular resource."]),
        "resource": StringAttribute, // Shows the resource associated with the characteristic."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcecharacteristic with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceCharacteristic with respect to the base currency."]),
      ])
      .registerPath("foundation_bookable.resource.characteristics");
  }
}
mixin(EntityCalls!("BookableResourceCharacteristicEntity"));

version(test_model_foundation) {
  unittest {
    
    assert(BookableResourceCharacteristicEntity);
  
  auto entity = BookableResourceCharacteristicEntity;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}

version(test_model_foundation) {
  unittest {
    
    auto script = crudScripts();
  }
}