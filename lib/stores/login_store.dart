import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore ;

abstract class _LoginStore with Store {

  _LoginStore(){
    autorun((_) {
      print(email);
      print(password);
    });
  }

  
//VARIAVEIS DA TELA DE LOGIN (EMAIL E SENHA)
 @observable
  String email= "";

  @action
  void setEmail(String value)=> email = value;

  @observable
  String password= "";

   @action
  void setPassword(String value)=> email = value;
//----------------------------------------------------------

}
  
