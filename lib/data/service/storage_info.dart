import 'package:get_storage_info/get_storage_info.dart';

class StorageInfoService {
  Future<double> getStorageTotal() async {
    return await GetStorageInfo.getStorageTotalSpaceInGB;
  }
}
