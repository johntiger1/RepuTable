
//OK, Remix and WEB3 does actually require an Internet connection!
function fetchResults()
{

    RepToken.badges(0x64319CA297239d8652A0b5f0F12dD6666cB0e05b, function(error, result){
        if(!error)
        {
            $("#badge_result").html(result[0]+' ('+result[1]+' years old)' + result[2] + result[3]);
            console.log(result);

            for (var i = 0; i < len(result); i++)
            {

                //jquery append element to the DOM
                
                //alternatively:
                //we need hardcode things as well!
            }
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
