void main() {
  // This jut stimulates elevations in a small trip
  // instead of this list call the functions whenever you record a elevation.
  // and on the end of the trip call the [onStopTrip] function.
  List<double> listOfDemoElevations = [
    200.0,
    300.0,
    400.0,
    1000.0,
    800.0,
    700.0,
    600.0,
    500.0,
    600.0,
    800.0,
    300.0,
    200.0
  ];

  ///This Code Snippet compares Elevation of three points to see if the person has started ascending or is descending.
  /// Then the code only stores the point after which user asecded or descended.
  /// Then Calulates the total Elevation Gain or Elevation Loss.

  double elevationGain = 0.0;
  double elevationLoss = 0.0;
  double startTripElevation = 100.0; //Record the StartTripElevation;
  double previousElevation = startTripElevation;
  double beforePreviousElevation = startTripElevation;
  double adjustment =
      startTripElevation; // this to get the truw ascend or descend

  // This function check the three elevation then adds to elevation gain or loss accordinly with adjustment so true elevation gain or loss is recorded.
  void calculateElevationGainLoss(double currentElevation) {
    if (beforePreviousElevation < previousElevation &&
        previousElevation > currentElevation) {
      elevationGain = elevationGain + (previousElevation - adjustment);
      adjustment = previousElevation;
    } else if (beforePreviousElevation > previousElevation &&
        currentElevation > previousElevation) {
      elevationLoss = elevationLoss + (adjustment - previousElevation);
      adjustment = previousElevation;
    }
    beforePreviousElevation = previousElevation;
    previousElevation = currentElevation;
  }

  /// this function check if the elevation at which the user ended the trip to be added to elevation gain or loss
  void onStopTrip(double currentElevation) {
    if (adjustment > currentElevation) {
      elevationLoss = elevationLoss + (adjustment - currentElevation);
    } else if (adjustment < currentElevation) {
      elevationGain = elevationGain + (currentElevation - adjustment);
    }
  }

  listOfDemoElevations.forEach((element) {
    calculateElevationGainLoss(element);
  });

  // Call this function when user hits end trip
  onStopTrip(listOfDemoElevations.last);

  print('Elevation gain=$elevationGain');
  print('Elevation loss=$elevationLoss');
  void main() {
    // This jut stimulates elevations in a small trip
    // instead of this list call the functions whenever you record a elevation.
    // and on the end of the trip call the [onStopTrip] function.
    List<double> listOfDemoElevations = [
      200.0,
      300.0,
      400.0,
      1000.0,
      800.0,
      700.0,
      600.0,
      500.0,
      600.0,
      800.0,
      300.0,
      200.0
    ];

    ///This Code Snippet compares Elevation of three points to see if the person has started ascending or is descending.
    /// Then the code only stores the point after which user asecded or descended.
    /// Then Calulates the total Elevation Gain or Elevation Loss.

    double elevationGain = 0.0;
    double elevationLoss = 0.0;
    double startTripElevation = 100.0; //Record the StartTripElevation;
    double previousElevation = startTripElevation;
    double beforePreviousElevation = startTripElevation;
    double adjustment =
        startTripElevation; // this to get the truw ascend or descend

    // This function check the three elevation then adds to elevation gain or loss accordinly with adjustment so true elevation gain or loss is recorded.
    void calculateElevationGainLoss(double currentElevation) {
      if (beforePreviousElevation < previousElevation &&
          previousElevation > currentElevation) {
        elevationGain = elevationGain + (previousElevation - adjustment);
        adjustment = previousElevation;
      } else if (beforePreviousElevation > previousElevation &&
          currentElevation > previousElevation) {
        elevationLoss = elevationLoss + (adjustment - previousElevation);
        adjustment = previousElevation;
      }
      beforePreviousElevation = previousElevation;
      previousElevation = currentElevation;
    }

    /// this function check if the elevation at which the user ended the trip to be added to elevation gain or loss
    void onStopTrip(double currentElevation) {
      if (adjustment > currentElevation) {
        elevationLoss = elevationLoss + (adjustment - currentElevation);
      } else if (adjustment < currentElevation) {
        elevationGain = elevationGain + (currentElevation - adjustment);
      }
    }

    listOfDemoElevations.forEach((element) {
      calculateElevationGainLoss(element);
    });

    // Call this function when user hits end trip
    onStopTrip(listOfDemoElevations.last);

    print('Elevation gain=$elevationGain');
    print('Elevation loss=$elevationLoss');
  }
}
