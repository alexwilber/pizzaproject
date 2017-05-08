


function calcAmount() {
    var pizzaprice = document.getElementById('txtpizzaprice').value;
    var totalpizza = document.getElementById('txtnumberofpizza').value;
    var totalamount = parseInt(pizzaprice) * parseInt(totalpizza);

       document.getElementById('txttotalamount').value = totalamount + "$";

}