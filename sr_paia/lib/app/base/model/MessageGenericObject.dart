import 'dart:core';

class MessageGenericObject {
  late TypeMessage typeMessage;
  String icon =  "";
  String title = "";
  String message = "";
  String buttonText = "Ok";
  bool close = false;
  // ignore: avoid_init_to_null
  Null callGoBack = null;
  bool onCloseDialog = false;
  // ignore: avoid_init_to_null
  Null onPositiveButtonClick = null;
  bool showPositiveButton  = true;
  bool showNegativeButton  = false;
}

class MessageSuccessObject extends MessageGenericObject  {
  String icon =  "";
  String title = "Sucesso";
}

class MessageErrorObject extends MessageGenericObject  {
  String icon =  "";
  String title = "Erro ao tentar carregar as informações";
  String message = "Tente novamente em alguns minutos";
}


enum TypeMessage {
  error,
  success,
  empty_error,
}

extension TypeMessageEnunMap on TypeMessage {
  static const valueMap = const {
    TypeMessage.error: 1,
    TypeMessage.success: 2,
    TypeMessage.empty_error: 2,
  };
  int? get value => valueMap[this];
}


/*
ERROR,
SUCCESS,
EMPTY_ERROR,
CHOOSE,
THREE_OPTIONS,
STATEMENT
}*/
