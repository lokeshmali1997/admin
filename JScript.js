function Validation() {

    var name = document.getElementById("Ctxtname").value;
    var email = document.getElementById("Ctxtemailaddress").value;
    var emailPatrn = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/
    var contact = document.getElementById("Ctxtcontactnumber").value;
    var re = /^[0-9]+$/;
    var address = document.getElementById("Ctxtaddress").value;
    var adharnumber = document.getElementById("Ctxtadharnumber").value;
     var checkindate = document.getElementById("txtdate").value;
    var imeinumber = document.getElementById("Ctxtimeino").value;
    var itemname = document.getElementById("Ctxtitemname").value;
    var modelcode = document.getElementById("Ctxtmodelcode").value;
    var problemreported = document.getElementById("Ctxtproblemreported").value;



    if (name == "") {
        alert("Please Enter Name");
        
        return false;

    }
   if  (email == "") {
  
      alert("Please Enter Email");
       return false;

   }
        if (!email.match(emailPatrn)) {
        alert("Invalid Email Format");
        return false;

    }
    if (!contact.match(re)) {

        alert("should be Number");
        return false;

  }
    if ((contact.length != 10)) {

        alert("only 10 digit allowed");
        return false;
    }

    if (address == "") {

        alert("Please Enter Address");
        return false;
    }

   if (!adharnumber.match(re)) {

        alert("should be Number");
        return false;

    }
    if (adharnumber.length != 16) {

        alert("only 16 digit allowed");
        return false;
    }

    if (checkindate == "") {
        alert("Please Enter Date");

        return false;
    }
 if (!imeinumber.match(re)) {

        alert("should be Number");
        return false;

    }
       if (itemname == "") {

      alert("Please Enter Name");
        return false;
    }
        if (modelcode == "") {

      alert("Please Enter Model Code");
              return false;

    }
    if (problemreported == "") {

        alert("Please Enter Problem");
        return false;

    }
    


   return true;
    
}