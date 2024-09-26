

class Validador{

  bool VerificaTelefone(String telefone){
    if(telefone.isEmpty){
      return false;
    }
    final RegExp valida = RegExp(r'^\(\d{2}\)\s9\d{4}-\d{4}$');
    return valida.hasMatch(telefone);
  }

  bool validarEmail(String email) {
    if(email.isEmpty){
      return false;
    }
    final RegExp valida = RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return valida.hasMatch(email);
  }
}