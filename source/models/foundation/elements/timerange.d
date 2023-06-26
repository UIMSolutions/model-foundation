module models.foundation.elements.timerange;

import models.foundation;
@safe:

class DTimeRangeElement: DElement {
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
        "start": StringAttribute, // Type the city for the customer's shipping address.
        "end": StringAttribute // Type the primary contact name at the customer's shipping address.
    ]);
  }

  override DElement create() { return TimeRangeElement; }
}
auto TimeRangeElement() { return TimeRangeElement; }
auto TimeRangeElement(string name) { return new DTimeRangeElement(name); }
auto TimeRangeElement(Json json) { return new DTimeRangeElement(json); }

