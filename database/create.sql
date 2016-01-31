DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS ItemColor;
DROP TABLE IF EXISTS Vendor;

CREATE TABLE Item (
  itemID INT AUTO_INCREMENT,
  vendorID INT,
  vendorItemID VARCHAR(50),
  displayName VARCHAR(255),
  subtype varchar(255),
  CONSTRAINT itemID_pk PRIMARY KEY (itemID),
  CONSTRAINT Item_vendorID FOREIGN KEY (vendorID) REFERENCES Vendor(vendorID)
);

CREATE TABLE ItemColor (
  itemColorID INT AUTO_INCREMENT,
  itemID INT,
  red TINYINT UNSIGNED,
  green TINYINT UNSIGNED,
  blue TINYINT UNSIGNED,
  CONSTRAINT itemColorID_pk PRIMARY KEY (itemColorID),
  CONSTRAINT itemColor_ItemID FOREIGN KEY (itemID) REFERENCES Item(itemID)
);

CREATE TABLE Vendor (
  vendorID INT AUTO_INCREMENT,
  displayName VARCHAR(255),
  CONSTRAINT vendorID_pk PRIMARY KEY (vendorID)
);


