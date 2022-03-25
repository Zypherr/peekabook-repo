function myAjax() {
    $.ajax({
         type: "POST",
         url: 'scripts/php/fetchBook.php',
         data:{action:'call_this'},
         success:function(html) {
           alert(html);
         }

    });
}