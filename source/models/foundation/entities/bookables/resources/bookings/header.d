module models.foundation.bookables.resources.bookings.header;

@safe:
import models.foundation;

// Reservation entity representing the summary of the associated resource bookings.
class DBookableResourceBookingHeaderEntity : DOOPEntity {
  mixin(EntityThis!("BookableResourceBookingHeaderEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "bookableResourceBookingHeaderId": UUIDAttribute, // Unique identifier of the resource booking header."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "duration": StringAttribute, // Shows the aggregate duration of the linked bookings."]),
        "endTime": TimeAttribute, // Shows the end date and time of the booking summary."]),
        "startTime": TimeAttribute, // Shows the start date and time of the booking summary."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcebookingheader with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceBookingHeader with respect to the base currency."]),
      ])
      .registerPath("foundation_bookable.resource.booking.headers");
  }
}
mixin(EntityCalls!("BookableResourceBookingHeaderEntity"));

version(test_model_foundation) {
  unittest {
    
    assert(BookableResourceBookingHeaderEntity);
  
  auto entity = BookableResourceBookingHeaderEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}