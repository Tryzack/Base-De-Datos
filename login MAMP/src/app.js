function ingreso()
{
    var user = document.getElementById('user').value;
    var password = document.getElementById('password').value;

    firebase.auth().signInWithEmailAndPassword(user, password)
    .then((userCredential) => {
      // Signed in
      var user = userCredential.user;
      // ...
    })
    .catch((error) => {
      var errorCode = error.code;
      var errorMessage = error.message;
      console.log(errorCode);
      console.log(errorMessage);
    });
}