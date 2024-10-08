function caricaCarrello()
{
    $.ajax(
        {
            type:"POST",
            url:"/caricaCarrello",
            success:function(carrello)
            {
                var index=0;
                while(index!==carrello.length)
                {
                    $("#articolo_qui").after(creaCarrello(carrello[index++]));
                }
            }
        })
}
let totale=0;
function creaCarrello(carrello)
{
    console.log(0);
    let doc=document.createElement("div");

    totale=totale+carrello.prezzo*carrello.quantita;
    doc.innerHTML="<hr class=\"my-4\">\n" +
        "                                    <div class=\"row mb-4 d-flex justify-content-between align-items-center\">\n" +
        "                                        <div class=\"col-md-2 col-lg-2 col-xl-2\">\n" +
        "                                            <img\n" +
        "                                                    src=\"image/dummy.jpg\"\n" +
        "                                                    class=\"img-fluid rounded-3\" alt=\"Cotton T-shirt\">\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-3 col-lg-3 col-xl-3\">\n" +
        "                                            <h6 class=\"text-black mb-0\">"+carrello.nomeProdotto+"</h6>\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-3 col-lg-3 col-xl-2 d-flex\">\n" +
        "                                            <button class=\"btn btn-link px-2\"\n" +
        "                                                    id='up' onclick=\"this.parentNode.querySelector('input[type=number]').stepDown()\">\n" +
        "                                                <i class=\"fas fa-minus\"></i>\n" +
        "                                            </button>\n" +
        "                                            <input id=\"form1\" min=\"0\" name=\"quantity\" value="+carrello.quantita+" type=\"number\"\n" +
        "                                                   class=\"form-control form-control-sm\" />\n" +
        "                                            <button class=\"btn btn-link px-2\"\n" +
        "                                                    onclick=\"this.parentNode.querySelector('input[type=number]').stepUp()\">\n" +
        "                                                <i class=\"fas fa-plus\"></i>\n" +
        "                                            </button>\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-3 col-lg-2 col-xl-2 offset-lg-1\">\n" +
        "                                            <h6 class=\"mb-0\">&euro;"+carrello.prezzo*carrello.quantita+"</h6>\n" +
        "                                        </div>\n" +
        "                                        <div class=\"col-md-1 col-lg-1 col-xl-1 text-end\">\n" +
        "                                            <a href=\"#!\" class=\"text-muted\"><i class=\"fas fa-times\"></i></a>\n" +
        "                                        </div>\n" +
        "                                    </div>\n" +
        "                                    <hr class=\"my-4\">";
    document.getElementById("totale").innerText=totale;
    return doc;
}

function modificaQuantita()
{
    console.log(1);
}