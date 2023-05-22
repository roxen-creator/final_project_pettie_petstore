// ignore_for_file: prefer_const_constructors

class SignUpWithEmailAndPasswordFailure{
  final String messaage;

 const  SignUpWithEmailAndPasswordFailure([this.messaage ="An unknown error occoured"]);

 factory SignUpWithEmailAndPasswordFailure.code(String code){
  switch(code){
    case'weak-password': return SignUpWithEmailAndPasswordFailure("Please enter a strong password.");
 case'invalid-email': return SignUpWithEmailAndPasswordFailure("Email is not valid or badly formatted.");
 case'e-mail-already-in-use': return SignUpWithEmailAndPasswordFailure("An account exists for that email.");
 case'operation-not-allowed': return SignUpWithEmailAndPasswordFailure("Operation is not allowed. Please contact support");
 case'user-disabled': return SignUpWithEmailAndPasswordFailure("This user has been disabled. Please contact support for help");

    default: return SignUpWithEmailAndPasswordFailure();
  }
 }

}