import 'charger_type_model.dart';
import 'processor_type_model.dart';

class CellModel {
  String color;
  String model;
  String brand;
  String operationalSystem;
  double inches;
  int ramMemory;
  ChargerTypeModel chargerType;
  ProcessorTypeModel processor;

  int _battery = 0;
  double _processorTemperate = 0;

  CellModel({
    required this.color,
    required this.model,
    required this.brand,
    required this.operationalSystem,
    required this.inches,
    required this.ramMemory,
    required this.chargerType,
    required this.processor,
  });

  int get showBatteryCharge => _battery;
  double get showProcessorTemperature => _processorTemperate;

  // set newChargeBattery(int newCharge) {
  //   _battery = newCharge;
  // }

  set newProcessorTemperature(double newTemperature) {
    if (newTemperature > 90) {
      _processorTemperate = 90;
    }
  }

  void recarregarBattery() {
    _increaseProcessorTemperature(processor.processorHeating * 2);
    _increaseBatteryCharge(chargerType.increaseInAmountOfCharge);
  }

  void useGames() {
    _increaseProcessorTemperature(processor.processorHeating + 1);
    _decreaseBatteryCharge(chargerType.decreaseInAmountOfCharge);
  }

  void coolProcessor() {
    _decreaseProcessorTemperature(processor.processorCooling);
    _decreaseBatteryCharge(chargerType.decreaseInAmountOfCharge);
  }

  void _increaseProcessorTemperature(double changeTemperature) {
    _processorTemperate += changeTemperature;
  }

  void _decreaseProcessorTemperature(double changeTemperature) {
    _processorTemperate -= changeTemperature;
  }

  void _increaseBatteryCharge(int changeCharge) {
    _battery += changeCharge;
  }

  void _decreaseBatteryCharge(int changeCharge) {
    _battery -= changeCharge;
  }
}
