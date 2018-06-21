// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

//= require jquery3
//= require popper
//= require bootstrap-sprockets

function AllowDrop(event){
    event.preventDefault();
}
function Drag(event){
    event.dataTransfer.setData("text",event.currentTarget.id);
}
function Drop(event){
    event.preventDefault();
    var data=event.dataTransfer.getData("text");
   // event.currentTarget.appendChild(document.getElementById(data));
    
    var list = document.getElementById(data);
    list.parentNode.removeChild(list);
    // while (list.hasChildNodes()) {
        
    // }

}
    
    // var objConnection = new ActiveXObject("adodb.connection");
    // var strConn = "driver={sql server};server=QITBLRQIPL030;database=adventureworks;uid=sa;password=12345";
    // objConnection.Open(strConn);
    // var rs = new ActiveXObject("ADODB.Recordset");
    // var strQuery = "SELECT * FROM  Person.Address";
    // rs.Open(strQuery, objConnection);
    // rs.MoveFirst();
    // while (!rs.EOF) {
    //     document.write(rs.fields(0) + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
    //     document.write(rs.fields(1) + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
    //     document.write(rs.fields(2) + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    ");
    //     document.write(rs.fields(3) + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    ");
    //     document.write(rs.fields(4) + "<br/>");
    //     rs.movenext();
    // }    
        // DELETE FROM Pictures
        // WHERE Picture.title ='text';
    
    
    
    



