// Show success msg after logging in/out.

$(document).ready(function() {

    $('[data-toggle=offcanvas]').click(function() {
        $('.row-offcanvas').toggleClass('active');
    });

});

$("#ansatte").click(function(){
    $.ajax(
        {
            url : "UserList",
            method: "GET",
            success: function (data) {
                $("#home-section").addClass("hidden")
                $("#ansatte-list").removeClass("hidden")
                console.log(data)
                for(let i=0;i< data.length;i++) {
                    $("#ansatte-list ul").append("  <li id='user-" + data[i].id + "' class=\"list-group-item\">" + data[i].firstName + " "+ data[i].lastName +"</li>\n")
                }
            },
            error: function (errorMessage) {
                alert("Error Occured");
            }
        });
});

// Download html table to an Excel file
$("#download_button").click(function () {
    $("#exportable_table").table2excel({
        filename: "Downloaded table.xls"
    });
})

