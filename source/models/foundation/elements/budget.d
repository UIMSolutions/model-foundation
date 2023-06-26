module models.foundation.elements.budget;

import models.foundation;
@safe:

class DBudgetElement: DElement {
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
        "amount": StringAttribute, // Type a value between 0 and 1,000,000,000,000 to indicate the lead's potential available budget."]),
        "amountBase": StringAttribute, // Value of the Budget Amount in base currency."]),
        "status": StringAttribute, // Select the likely budget status for the lead's company. This may help determine the lead rating or your sales approach."]),
        "statusDisplay": StringAttribute //
    ]);
  }

  mixin(StringValueProperty!("amount"));
  mixin(StringValueProperty!("amountBase"));
  mixin(StringValueProperty!("status"));
  mixin(StringValueProperty!("statusDisplay"));

  override DElement create() { return BudgetElement; }
}
auto BudgetElement() { return BudgetElement; }
auto BudgetElement(string name) { return new DBudgetElement(name); }
auto BudgetElement(Json json) { return new DBudgetElement(json); }

