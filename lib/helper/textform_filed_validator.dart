




class TextFormFiledValidator{

  static String? validateEmail(String value) {

    RegExp regex = RegExp( r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regex.hasMatch(value))
      return null;
    else
      return 'error';
  }
  static String? validateMobile(String value) {

    if (value.length <4)
      return 'Mobile Number must be minimum 3 digit';
    else
      return null;
  }

}