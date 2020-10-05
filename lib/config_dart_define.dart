enum Environment { DEV, QA, PROD }

class ConfigDartDefine {
  static const appName = String.fromEnvironment(
    'appName',
    defaultValue: 'Vainilla',
  );

  static const env = String.fromEnvironment(
    'env',
    defaultValue: 'DEV',
  );

  static const apiUrl = String.fromEnvironment('apiUrl');

  static Environment environment() {
    switch (env.toUpperCase()) {
      case 'DEV':
        return Environment.DEV;
        break;
      case 'QA':
        return Environment.QA;
        break;
      case 'PROD':
        return Environment.PROD;
        break;
      default:
        return Environment.DEV;
        break;
    }
  }
}
