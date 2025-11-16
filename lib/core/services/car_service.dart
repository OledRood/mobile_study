import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_study/core/models/car/car_card_model.dart';
import 'package:mobile_study/core/models/car/car_details.dart';
import 'package:mobile_study/core/models/car/car_rent_data.dart';
import 'package:mobile_study/core/models/car/car_rent_history.dart';
import 'package:mobile_study/core/services/api_service.dart';
import 'package:mobile_study/ui/theme/models/app_images.dart';

class CarService {
  CarService();
  final ApiService apiService = ApiService();

  //Получение деталей по id
  Future<CarDetails?> getCarDetails(String id) async {
    await Future.delayed(Duration(seconds: 2));
    // apiService.get("car/details/$id");

    return _getMockedCarDetailsById(id);
  }

  //точные данные об оплате(для страницы оплаты)
  Future<CarRentData?> getCarRentData(String id) async {
    await Future.delayed(Duration(seconds: 2));
    // apiService.get("car/rentdata/$id");

    return _getMockedCarRentDataById(id);
  }

  //Забронировать машину по id
  Future<bool> bookCar(String id, Map<String, dynamic> bookingData) async {
    await Future.delayed(Duration(seconds: 2));
    // apiService.post("car/book/$id", bookingData);

    return true;
  }

  //Список бронированний пользователя
  Future<List<CarRentData>> getUserRentHistory() async {
    return _mockedCarRentData;
  }

  //Информация о старом бронированнии
  Future<CarRentData?> getRentDetails(String rentId) async {
    await Future.delayed(Duration(seconds: 2));
    // apiService.get("car/rentdetails/$rentId");
    if (rentId == "0") {
      return _getMockedCarRentDataById(rentId).copyWith(
        driverName: 'Петр Петров',
        driverLicenseNumber: '9499999993',
        status: "Активен",
      );
    }

    return _getMockedCarRentDataById(rentId).copyWith(
      driverName: 'Иван Иванов',
      driverLicenseNumber: '9499999994',
      status: "Завершен",
    );
  }

  //Получить список избранных атомобилей
  Future<List<CarCardModel>> getUserCarRentHistory() async {
    return _mockedFavoriteCars;
  }

  Future<List<CarCardModel>> getHomeRecommendations() async {
    return _mockedFavoriteCars;
  }

  Future<List<CarCardModel>> getSearchResutls(String searchText) async {
    return _mockedFavoriteCars;
  }

  Future<bool?> setNewFavoriteStatus(String id, bool bool) async {}
}

CarDetails _getMockedCarDetailsById(String id) {
  int currentIndex = int.tryParse(id) ?? 0;
  currentIndex = currentIndex % _mockedDetailsData.length;
  return _mockedDetailsData[currentIndex];
}

CarRentData _getMockedCarRentDataById(String id) {
  int currentIndex = int.tryParse(id) ?? 0;
  currentIndex = currentIndex % _mockedCarRentData.length;
  return _mockedCarRentData[currentIndex];
}

final List<CarDetails> _mockedDetailsData = [
  // BMW X5
  CarDetails(
    id: '0',
    name: 'BMW X5',
    description:
        'Комфортный внедорожник премиум-класса, просторный салон, автомат, полный привод',
    isFavorite: false,
    location: 'Москва',
    imageUrl: AppImages.mockedBmwX5Image,
    pricePerDay: '3500₽/день',
  ),
  // Mercedes S500
  CarDetails(
    id: '1',
    name: 'Mercedes S500',
    description:
        'Седан представительского класса, роскошный интерьер, страховка включена',
    isFavorite: false,
    location: 'Москва',
    imageUrl: AppImages.mockedMercedesImage,
    pricePerDay: '2000₽/день',
  ),
  // Lada Largus
  CarDetails(
    id: '2',
    name: 'Lada Largus',
    description:
        'Практичный универсал для города и поездок, вместительный багажник',
    isFavorite: false,
    location: 'Москва',
    imageUrl: AppImages.mockedLadaLargusImage,
    pricePerDay: '200₽/день',
  ),
  // Tesla Model S
  CarDetails(
    id: '3',
    name: 'Tesla Model S (2019)',
    description:
        'Электромобиль, запас хода 450 км, премиум-сегмент, быстрый заряд',
    isFavorite: false,
    location: 'Москва',
    imageUrl: AppImages.mockedAutoDetailsPhoto,
    pricePerDay: '2500₽/день',
  ),
];

final List<CarRentData> _mockedCarRentData = [
  // BMW X5
  CarRentData(
    id: '0',
    autoName: 'BMW X5',
    autoMark: 'BMW',
    pricePerDay: '3500₽',
    startRentDate: '2025-11-12',
    endRentDate: '2025-11-14',
    adress: 'Москва, ул. Тверская, 10',
    priceOfInsurance: '500₽',
    totalPrice: '7500₽',
    priceOfDeposit: '3000₽',
    image: AppImages.mockedBmwX5Image,
  ),
  // Mercedes S500
  CarRentData(
    id: '1',
    autoName: 'Mercedes S500',
    autoMark: 'Mercedes',
    pricePerDay: '2000₽',
    startRentDate: '2025-11-15',
    endRentDate: '2025-11-18',
    adress: 'Москва, пр. Мира, 7',
    priceOfInsurance: '400₽',
    totalPrice: '6400₽',
    priceOfDeposit: '2500₽',
    image: AppImages.mockedMercedesImage,
  ),
  // Lada Largus
  CarRentData(
    id: '2',
    autoName: 'Lada Largus',
    autoMark: 'Lada',
    pricePerDay: '200₽',
    startRentDate: '2025-11-20',
    endRentDate: '2025-11-25',
    adress: 'Москва, ул. Сущевская, 19',
    priceOfInsurance: '120₽',
    totalPrice: '1120₽',
    priceOfDeposit: '1000₽',
    image: AppImages.mockedLadaLargusImage,
  ),
  // Tesla Model S 2019
  CarRentData(
    id: '3',
    autoName: 'Tesla Model S (2019)',
    autoMark: 'Tesla',
    pricePerDay: '2500₽',
    startRentDate: '2025-11-27',
    endRentDate: '2025-11-30',
    adress: 'Москва, ул. Арбат, 50',
    priceOfInsurance: '600₽',
    totalPrice: '8100₽',
    priceOfDeposit: '4000₽',
    image: AppImages.mockedAutoDetailsPhoto,
  ),
];

final List<CarRentHistory> _mockedCarRentHistory = [
  CarRentHistory(rentId: '0', status: 'Активен'),
  CarRentHistory(rentId: '1', status: 'Завершен'),
  CarRentHistory(rentId: '2', status: 'Завершен'),
  CarRentHistory(rentId: '3', status: 'Завершен'),
];

final List<CarCardModel> _mockedFavoriteCars = [
  CarCardModel(
    id: '0',
    autoName: 'BMW X5',
    autoMark: 'BMW',
    price: '3500₽',
    pricePeriod: 'день',
    transmission: 'Автомат',
    fuel: 'Бензин',
  ),
  CarCardModel(
    id: '1',
    autoName: 'Mercedes S500',
    autoMark: 'Mercedes',
    price: '2000₽',
    pricePeriod: 'день',
    transmission: 'Автомат',
    fuel: 'Бензин',
  ),
  CarCardModel(
    id: '2',
    autoName: 'Lada Largus',
    autoMark: 'Lada',
    price: '200₽',
    pricePeriod: 'день',
    transmission: 'Механика',
    fuel: 'Бензин',
  ),
  CarCardModel(
    id: '3',
    autoName: 'Tesla Model S (2019)',
    autoMark: 'Tesla',
    price: '2500₽',
    pricePeriod: 'день',
    transmission: 'Автомат',
    fuel: 'Электро',
  ),
];
