module models.foundation.products.association;

@safe:
import models.foundation;

// Instance of a product added to a bundle or kit.
class DProductAssociationEntity : DOOPEntity {
  mixin(EntityThis!("ProductAssociationEntity"));
  
  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        StateCodeAttribute, // Status of the Bookable Resource Group
        StatusCodeAttribute // Reason for the status of the Bookable Resource Group      
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "associatedProduct": StringAttribute, // Select a product to add to the bundle or kit."]),
        "productId": UUIDAttribute, // Select a bundle or a kit."]),
        "quantity": StringAttribute, // Type the quantity of the products added to the bundle or kit."]),
        "productIsRequired": StringAttribute, // Select whether the associated product is required or optional."]),
        "productIsRequired_display": StringAttribute, // f"]),
        "uoMId": UUIDAttribute, // Shows the unit of the product association."]),
        "propertyCustomizationStatus": StringAttribute, // Shows whether the item has properties that can be customized."]),
        "propertyCustomizationStatus_display": StringAttribute, // f"]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the record."]),
      ])
      .registerPath("foundation_product.associations");
  }
}
mixin(EntityCalls!("ProductAssociationEntity"));

unittest {
  version(test_model_foundation) {
    
    assert(ProductAssociationEntity);
  
    auto entity = ProductAssociationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}