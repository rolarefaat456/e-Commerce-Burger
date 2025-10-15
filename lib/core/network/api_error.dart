class ApiError { // model ll status elly btrg3ly 
  final String message;
  final int? statusCode;

  ApiError({required this.message, required this.statusCode});

  @override
  String toString(){
    return 'Error is $message statusCode is $statusCode';
  }

}