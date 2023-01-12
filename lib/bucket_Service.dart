import 'package:flutter/material.dart';

import 'main.dart';

/// Bucket 담당
class BucketService extends ChangeNotifier { // ChangeNotifier 노티 알람변경
  List<Bucket> bucketList = [
    Bucket('잠자기', false), // 더미(dummy) 데이터
  ];

  /// bucket 추가
  void createBucket(String job) {
    bucketList.add(Bucket(job, false));
    notifyListeners(); // setStat 새로고침하는영역 ㅎ
  }

  /// bucket 수정
  void updateBucket(Bucket bucket, int index) {
    bucketList[index] = bucket;
    notifyListeners();
  }


  /// bucket 삭제
  void deleteBucket(int index) {
    bucketList.removeAt(index);
    notifyListeners();
  }

}