import '../models/cell_model.dart';
import '../models/charger_type_model.dart';
import '../models/processor_type_model.dart';

void note10() {
  ChargerTypeModel turboCharger = ChargerTypeModel(
      increaseInAmountOfCharge: 20,
      decreaseInAmountOfCharge: 10,
      chargerType: "Turbo");

  ProcessorTypeModel octaCore = ProcessorTypeModel(
      type: "Octa-core", processorHeating: 4.5, processorCooling: 3.0);

  CellModel note10 = CellModel(
      color: "Verde",
      model: "Note 10",
      brand: "Redmi",
      operationalSystem: "Android",
      inches: 7,
      ramMemory: 6,
      chargerType: turboCharger,
      processor: octaCore);

  note10.recarregarBattery();
  note10.useGames();
  print('Carga da bateria do note10: ${note10.showBatteryCharge} %');
  print(
      'Temperatura do processador do note 10: ${note10.showProcessorTemperature} °');

  note10.coolProcessor();
  print('Carga da bateria do note10: ${note10.showBatteryCharge} %');
  print(
      'Temperatura do processador do note 10: ${note10.showProcessorTemperature} °');

  note10.newProcessorTemperature = 100;
  print(
      'Temperatura do processador do note 10: ${note10.showProcessorTemperature} °');
}
