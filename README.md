JDFToolkit
==========

A Toolkit of simple classes and categories for common tasks on iOS. JDFToolkit will not try to be an everything-but-the-kitchen-sink library; it is meant to be for common (and mostly simple) stuff.

##Classes

###JDFTableSection & JDFTableItem

JDFTableSection & JDFTableItem are useful for encapsulating your table data. 

Create a JDFTableSection for each section in your table, and a JDFTableItem for each table item. JDFTableSection has a `rows` property, that would be an array of JDFTableItems.

###JDFTextView

JDFTextView is a drop-in replacement for UITextView that adds a placeholder.

###JDFDateFormatterCache

JDFDateFormatterCache is a singleton that is used to cache NSDateFormatters. NSDateFormatters are expensive to create, so should be cached and re-used where possible. 

JDFDateFormatterCache has a few pre-configured NSDateFormatter properties that you can use, with some of the common NSDateFormatterStyles. As it is a singleton, if you use the NSDateFormatter properties provided, you will not be creating NSDateFormatters everytime you use one. It is not recommended that you change the NSDateFormatterStyle of these properties, as this will be reflected everywhere that you use that dateFormatter, which may not be what you want!

###JDFLocationUtilities

JDFLocationUtilities is a simple utility class that has a couple of class methods for calculating an appropriate `MKCoordinateRegion` for displaying certain coordinates or map items on a map.

###JDFProjectUtilities

JDFProjectUtilities is a simple utility class that has a couple of class methods for getting the Version & Build numbers, and the App Name.

##Categories

###NSDate+JDFToolkit

NSDate+JDFToolkit adds a number of methods to NSDate to make it easier to compare it against another date.

###UIView+JDFGeometry

UIView+JDFGeometry adds a number of methods to UIView to make it easier to work with its `frame`. It provides convenience methods for getting & setting frame values, centering the view in its superview etc.

###UILabel+JDFToolkit

UILabel+JDFToolkit has a couple of methods for resizing the label to fit its text contents (either resizing it horizontally or vertically).

###NSObject+JDFBlocks

NSObject+JDFBlocks simply adds a `-performBlock:afterDelay:` method to NSObject.

###NSString+JDFToolkit

NSString+JDFToolkit adds some convenience methods to NSString, e.g. for trimming/reversing the string.

