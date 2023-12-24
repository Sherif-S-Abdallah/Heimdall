import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:heimdall/Data/Firebase/FirebaseReportDataBase.dart';
import 'package:heimdall/Data/Models/Report/ReportDTO.dart';
import 'package:heimdall/Domain/DataSource/FirebaseReportRemoteDataSource.dart';
import 'package:heimdall/Domain/Exceptions/FirebaseDatabaseException.dart';
import 'package:heimdall/Domain/Exceptions/TimeOutOperationsException.dart';
import 'package:heimdall/Domain/Exceptions/UnknownException.dart';
import 'package:heimdall/Domain/Models/Report/Report.dart';

FirebaseReportRemoteDataSource injectFirebaseReportRemoteDataSource(){
  return FirebaseReportRemoteDataSourceImpl(dataBase: injectFirebaseReportDataBase());
}

class FirebaseReportRemoteDataSourceImpl implements FirebaseReportRemoteDataSource {

  FirebaseReportDataBase dataBase;
  FirebaseReportRemoteDataSourceImpl({required this.dataBase});

  @override
  Future<Report> sendReport({required ReportDTO report}) async{
    try{
      var response = await dataBase.sendReport(report: report);
      return response.toDomain();
    } on FirebaseException catch (e) {
      throw FirebaseDatabaseException(errorMessage: e.code);
    } on TimeoutException catch (e) {
      throw TimeOutOperationsException(errorMessage: "User Auth Timed Out");
    } catch (e) {
      throw UnknownException(errorMessage: "Unknown Error");
    }
  }

}