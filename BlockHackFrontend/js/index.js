
//OK, Remix and WEB3 does actually require an Internet connection!
function fetchResults()
{
    var count =0 ;
    RepToken.badges(0x861a62c1c6f063d8b91eb8bd8869767275e0b4a2, function(error, result){
        if(!error)
        {
            //go to the thing first
            $("#badge_result").html(result[0]+' ('+result[1]+' years old)' + result[2] + result[3]);
            console.log(result);
            $("#results").removeAttr("hidden");
            $("#results").css("display", "inline");

            var $root = $('html, body');

            $('a[href^="#"]').click(function() {
                var href = $.attr(this, 'href');

                $root.animate({
                    scrollTop: $(href).offset().top
                }, 500, function () {
                    window.location.hash = href;
                });

                return false;
            });

            window.location.href = "#results"; //simply need THIS to go to the results page

            for (var i = 0; i < result.length; i++)
            {
                var id = "#but" + i;
                $(id).text( result[i]);

                //jquery append element to the DOM

                //alternatively:
                //we need hardcode things as well!
            }
            var img_id = "#logo" + count;
            $(img_id).attr("src","img/arc.png");

            $("#logo1").attr("src", "img/khan.png");
            $(but7).text( "0xd52b24d3793e98c6ee7c4a671f6aefa35e25c8ba");
            $(but8).text( 90);
            $(but9).text( "Calculus, Programming, Agile");
            $(but10).text("Frisha was a fantastic pro bono developer for our small charity!");


            $("#logo2").attr("src", "img/khan.png");
            $(but7).text( "0xd52b24d3793e98c6ee7c4a671f6aefa35e25c8ba");
            $(but8).text( 90);
            $(but9).text( "Calculus, Programming, Agile");
            $(but10).text("Frisha was a fantastic pro bono developer for our small charity!");

            //add another result:


        }
        else
            console.error(error);
    });

    //might also be attaching the callback incorrectly...
    // console.log(document.getElementById("uaddress").innerText);
    // RepToken.badges(document.getElementById("uaddress").innerText,function(error, result){
    //     if(!error)
    //     {
    //         $("#badge_result").html(result[0]+' ('+result[1]+' years old)' + result[2] + result[3]);
    //         console.log(result);
    //     }
    //     else
    //         console.error(error);
    // });

    // $("#button").click(function() {
    //     Coursetro.setInstructor($("#name").val(), $("#age").val());
    // });
}
