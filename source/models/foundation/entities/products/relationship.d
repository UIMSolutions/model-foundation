module models.foundation.products.relationship;

@safe:
import models.foundation;

// Information about the selling relationship between two products, including the relationship type, such as up-sell, cross-sell, substitute, or accessory.
class DProductRelationshipEntity : DOOPEntity {
  mixin(EntityThis!("ProductRelationshipEntity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        StateCodeAttribute, // Status of the Bookable Resource Group
        StatusCodeAttribute // Reason for the status of the Bookable Resource Group      
      ])
      .addValues([ // individual values
        "productSubstituteId": UUIDAttribute, // Shows the unique identifier of the product relationship."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "productId": UUIDAttribute, // Shows the product that the relationship is defined for."]),
        "salesRelationshipType": StringAttribute, // Select the type of the product relationship."]),
        "salesRelationshipType_display": StringAttribute, // 
        "substitutedProductId": UUIDAttribute, // Select the related product that the relationship needs to be defined for."]),
        "direction": StringAttribute, // Select whether the relationship is unidirectional or bidirectional."]),
        "direction_display": StringAttribute, // 
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the record."]),
      ])
      .registerPath("foundation_products.relationships");
  }
}
mixin(EntityCalls!("ProductRelationshipEntity")); 

unittest {
  version(test_model_foundation) {
    
    assert(ProductRelationshipEntity);
  
  auto entity = ProductRelationshipEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}