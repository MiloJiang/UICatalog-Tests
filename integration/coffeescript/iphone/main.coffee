#import "../../../../tuneup_js/tuneup.js"
#import "../screens.js"

mainScreen = new MainScreen()

# Setup image-assertion mechanism
createImageAsserter("tuneup_js", "integration/tmp/results", "integration/screenshots")

test "The main screen", (target, app) ->
  mainScreen.validate()

test "Action Sheets", (target, app) ->
  mainScreen.tapActionSheetsCell()

  actionSheetsScreen = new ActionSheetsScreen()
  actionSheetsScreen.validate()

  actionSheetsScreen.tapOkayCancel()
  actionSheetsScreen.tapOther()
  actionSheetsScreen.goBack()

test "Activity Indicators", (target, app) ->
  mainScreen.tapActivityIndicatorsCell()

  spinnersScreen = new ActivityIndicatorsScreen()
  spinnersScreen.validate()

  spinnersScreen.goBack()

test "Alert View", (target, app) ->
  mainScreen.tapAlertViewsCell()

  alertViewsScreen = new AlertViewsScreen()
  alertViewsScreen.validate()

  alertViewsScreen.tapSimpleCell()
  alertViewsScreen.tapOkayCancelCell()
  alertViewsScreen.tapOtherCell()
  alertViewsScreen.tapTextEntryCell()
  alertViewsScreen.tapSecureTextEntryCell()

  alertViewsScreen.goBack()

test "Buttons", (target, app) ->
  mainScreen.tapButtonsCell()

  buttonsScreen = new ButtonsScreen()
  buttonsScreen.validate()

  # no further behavior to validate here
  buttonsScreen.goBack()

test "Date Picker", (target, app) ->
  mainScreen.tapDatePickerCell()

  datePickerScreen = new DatePickerScreen()
  datePickerScreen.validate()

  datePickerScreen.assertDayPickerChangesLabel()
  datePickerScreen.assertHourPickerChangesLabel()
  datePickerScreen.assertMinutePickerChangesLabel()

  datePickerScreen.goBack()

test "Image View", (target, app) ->
  mainScreen.tapImageViewCell()

  imageViewScreen = new ImageViewScreen()
  imageViewScreen.validate()

  imageViewScreen.goBack()

test "Page Control", (target, app) ->
  mainScreen.tapPageControlCell()

  pageControlScreen = new PageControlScreen()
  pageControlScreen.validate()

  pageControlScreen.goBack()
