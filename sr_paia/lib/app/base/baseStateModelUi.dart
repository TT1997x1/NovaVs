
import 'model/MessageGenericObject.dart';

class BaseStateModelUi {
   dynamic data;
   MessageGenericObject messageObject = MessageGenericObject();
   int codeState = 0;

   BaseStateModelUi(this.data, this.messageObject, this.codeState) {
      this.data = data;
      this.messageObject = messageObject;
      this.codeState = codeState;
   }
}