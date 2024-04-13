import 'dart:async';

import 'package:flutter_epam_kazakh/core/utils/logger.dart';
import 'package:flutter_epam_kazakh/src/app/logic/app_runner.dart';

// Sultan
void main() {
  logger.runLogging(() {
    runZonedGuarded(
      () => AppRunner().initializeAndRun(),
      logger.logZoneError,
    );

    const LogOptions();
  });
}
