import '../models/cell_model.dart';
import '../models/charger_type_model.dart';
import '../models/processor_type_model.dart';

void j5() {
  ChargerTypeModel simpleCharger = ChargerTypeModel(
      increaseInAmountOfCharge: 10,
      decreaseInAmountOfCharge: 5,
      chargerType: "Simples");

  ProcessorTypeModel quadCore = ProcessorTypeModel(
    type: "Quad-core",
    processorHeating: 2.0,
    processorCooling: 1.5,
  );

  CellModel j5 = CellModel(
      color: "Cinza",
      model: "J5 Prime",
      brand: "Samsung",
      operationalSystem: "Android",
      inches: 5,
      ramMemory: 4,
      chargerType: simpleCharger,
      processor: quadCore);

  j5.recarregarBattery();
  j5.recarregarBattery();
  j5.recarregarBattery();
  j5.useGames();
  print('Carga da bateria do j5: ${j5.showBatteryCharge} %');
  print('Temperatura do processador do j5: ${j5.showProcessorTemperature} °');

  j5.coolProcessor();
  print('Carga da bateria do j5: ${j5.showBatteryCharge} %');
  print('Temperatura do processador do j5: ${j5.showProcessorTemperature} °');
}
