<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Italian Food</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.0.4/popper.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/carrello.js" > </script>
    <jsp:include page="menuBar.jsp"/>
</head>
<body onload=caricaCarrello() style="background-color: white">
<link rel="stylesheet" href="css/carrello.css" type="text/css"/>
<link rel="stylesheet" href="css/style.css" type="text/css"/>


<section class="h-100 h-custom" style="background-color:#FF0000;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12">
                <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                    <div class="card-body p-0">
                        <div class="row g-0">
                            <div class="col-lg-8">
                                <div class="p-5">
                                    <div id="articolo_qui" class="d-flex justify-content-between align-items-center mb-5">
                                        <h1 class="fw-bold mb-0 text-black">Carrello</h1>
                                        <h6 class="mb-0 text-muted"></h6>
                                    </div>

                                    <div class="pt-5">
                                        <h6 class="mb-0"><a href="#!" class="text-body"><i
                                                class="fas fa-long-arrow-alt-left me-2"></i>Home</a></h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 bg-grey">
                                <div class="p-5">
                                    <h3 class="fw-bold mb-5 mt-2 pt-1">Riepilogo</h3>
                                    <hr class="my-4">



                                    <h5 class="text-uppercase mb-3">Indirizzo di consegna</h5>

                                    <div class="mb-4 pb-2">
                                        <select class="select">
                                            <option value="1">Standard-Delivery- €5.00</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                            <option value="4">Four</option>
                                        </select>
                                    </div>


                                    <hr class="my-4">
                                    <div class="d-flex justify-content-between mb-5">
                                        <h5 class="text-uppercase">Prezzo totale</h5>
                                        <h5 id="totale"></h5>
                                    </div>
                                    <div id="smart-button-container">
                                        <div style="text-align: center;">
                                            <div id="paypal-button-container"></div>
                                        </div>
                                    </div>
                                    <script src="https://www.paypal.com/sdk/js?client-id=AX061oyRlmStCkYrzw7G8r_X-gVBxw1ru1hTDSPJ0M0ON7RIWlE-9-NaAbHV460IrCsDHW4oCsX669F9&currency=EUR" data-sdk-integration-source="button-factory"></script>
                                    <script>
                                        function initPayPalButton() {
                                            paypal.Buttons({
                                                style: {
                                                    shape: 'pill',
                                                    color: 'blue',
                                                    layout: 'horizontal',
                                                    label: 'paypal',

                                                },

                                                createOrder: function(data, actions) {
                                                    return actions.order.create({
                                                        purchase_units: [{"amount":{"currency_code":"EUR","value":200}}]
                                                    });
                                                },

                                                onApprove: function(data, actions) {
                                                    return actions.order.capture().then(function(orderData) {

                                                        // Full available details
                                                        console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

                                                        // Show a success message within this page, e.g.
                                                        const element = document.getElementById('paypal-button-container');
                                                        element.innerHTML = '';
                                                        element.innerHTML = '<h3>Thank you for your payment!</h3>';

                                                        // Or go to another URL:  actions.redirect('thank_you.html');

                                                    });
                                                },

                                                onError: function(err) {
                                                    console.log(err);
                                                }
                                            }).render('#paypal-button-container');
                                        }
                                        initPayPalButton();
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>