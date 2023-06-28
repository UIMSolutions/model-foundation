module models.foundation.products.product;

@safe:
import models.foundation;

// Information about products and their pricing information.
class DProductEntity : DEntity {
  mixin(EntityThis!("ProductEntity"));
  
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
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "vendorId": UUIDAttribute, // Unique identifier of vendor supplying the product."]),
        "validFromDate": DateAttribute, // Date from which this product is valid."]),
        "validToDate": DateAttribute, // Date to which this product is valid."]),
        "currentCost": StringAttribute, // Current cost for the product item. Used in price calculations."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the product."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the product with respect to the base currency."]),
        "currentCostBase": StringAttribute, // Value of the Current Cost in base currency."]),
        "defaultUoMId": UUIDAttribute, // Default unit for the product."]),
        "defaultUoMScheduleId": UUIDAttribute, // Default unit group for the product."]),
        "isKit": BooleanAttribute, // Information that specifies whether the product is a kit."]),
        "isStockItem": BooleanAttribute, // Information about whether the product is a stock item."]),
        "parentProductId": UUIDAttribute, // Specifies the parent product family hierarchy."]),
        "price": StringAttribute, // List price of the product."]),
        "priceBase": StringAttribute, // Value of the List Price in base currency."]),
        "productStructure": StringAttribute, // Product Structure."]),
        "productStructure_display": StringAttribute, // 
        "productNumber": NumberAttribute, // User-defined product ID."]),
        "productTypeCode": StringAttribute, // Type of product."]),
        "productTypeCode_display": StringAttribute, // 
        "productUrl": UrlAttribute, // URL for the Website associated with the product."]),
        "quantityDecimal": DecimalAttribute, // Number of decimal places that can be used in monetary amounts for the product."]),
        "quantityOnHand": StringAttribute, // Quantity of the product in stock."]),
        "size": StringAttribute, // Product size."]),
        "standardCost": StringAttribute, // Standard cost of the product."]),
        "standardCostBase": StringAttribute, // Value of the Standard Cost in base currency."]),
        "stockVolume": StringAttribute, // Stock volume of the product."]),
        "stockWeight": StringAttribute, // Stock weight of the product."]),
        "supplierName": StringAttribute, // Name of the product's supplier."]),
        "vendorName": StringAttribute, // Name of the product vendor."]),
        "vendorPartNumber": NumberAttribute, // Unique part identifier in vendor catalog of this product."]),
        "hierarchyPath": StringAttribute, // Hierarchy path of the product."]),
        "priceLevelId": UUIDAttribute, // Select the default price list for the product."]),
        "subjectId": UUIDAttribute, // Select a category for the product."]),
        "entityImageId": UUIDAttribute, // 
        "createdByExternalParty": StringAttribute, // Shows the external party who created the record."]),
        "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record."]),
      ])
      .registerPath("foundation_products");
  }
}
mixin(EntityCalls!("ProductEntity"));


version(test_model_foundation) { unittest {
    
    assert(ProductEntity);
  
  auto entity = ProductEntity;
    // auto repository = OOPFileRepository("./tests");
  /*  repository.create("entities", entity.entityClasses, entity.toJson);

    auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
    assert(json != Json(null), entity.id.toString~" not found");

    repository.cleanupConnections; */
  }
}