// $(document).ready(function() {
//     $('button').click(function() {
//       var toAdd = $("input[name=message]").val();
//         $('#messages').append("<p>"+toAdd+"</p>");
//     });
// });

<script language="Javascript">

function checkandclose()
{

var email = $('#myEmail').val();

if(validateEmail(email))
{
  $('#myModal').modal('hide');
  $('.myBody').append('<p>Name: '+$('#myText').val()+'</p><p>Email: '+$('#myEmail').val()+'</p>');
}
else
{
alert("please enter a valid email address!");
}
}

function validateEmail(email) {

    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}
window.onload=function()
{
$('#myModal').modal('show');

}
</script>
