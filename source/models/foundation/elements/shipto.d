module models.foundation.elements.shipto;

import models.foundation;
@safe:

class DShipToElement: DElement {
  // static namespace = moduleName!DVersion;

  // Constructors
  this() { super(); }

  this(string myName) { 
    super(myName); }

  this(Json aJson) { 
    this();    
    if (aJson != Json(null)) this.fromJson(aJson); }

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "addressId": UUIDAttribute, // Unique identifier of the shipping address.
        "city": StringAttribute, // Type the city for the customer's shipping address.
        "contactName": StringAttribute, // Type the primary contact name at the customer's shipping address.
        "country": StringAttribute, // Type the country or region for the customer's shipping address.
        "fax": StringAttribute, // Type the fax number for the customer's shipping address.
        "freightTermsCode": StringAttribute, // Select the freight terms to make sure shipping orders are processed correctly.
        "freightTermsCode_display": StringAttribute, // 
        "line1": StringAttribute, // Type the first line of the customer's shipping address.
        "line2": StringAttribute, // Type the second line of the customer's shipping address.
        "line3": StringAttribute, // Type the third line of the shipping address.
        "name": StringAttribute, // Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address.
        "postalCode": StringAttribute, // Type the ZIP Code or postal code for the shipping address.
        "stateOrProvince": StringAttribute, // Type the state or province for the shipping address.
        "telephone": StringAttribute, // Type the phone number for the customer's shipping address.
    ]);
  }

  mixin(UUIDValueProperty!("addressId"));
  mixin(StringValueProperty!("city"));
  mixin(StringValueProperty!("contactName"));
  mixin(StringValueProperty!("country"));
  mixin(StringValueProperty!("fax"));
  mixin(StringValueProperty!("freightTermsCode"));
  mixin(StringValueProperty!("freightTermsCode_display"));
  mixin(StringValueProperty!("line1"));
  mixin(StringValueProperty!("line2"));
  mixin(StringValueProperty!("line3"));
  mixin(StringValueProperty!("name"));
  mixin(StringValueProperty!("postalCode"));
  mixin(StringValueProperty!("stateOrProvince"));
  mixin(StringValueProperty!("telephone"));

  override DElement create() { return ShipToElement; }
}
auto ShipToElement() { return ShipToElement; }
auto ShipToElement(string name) { return new DShipToElement(name); }
auto ShipToElement(Json json) { return new DShipToElement(json); }

