<%-- 
    Document   : newjsp
    Created on : Jan 19, 2020, 9:38:59 PM
    Author     : datura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Document</title>
</head>

<body>
    <div class="container-fluid bg-dark text-white">
        <div class="row justify-content-between align-items-center bd-highlight mb-3">
            <div id="price" class="right-border pr-2 w-25 ml-2">
                <div class="d-flex justify-content-between">
                    <label for="priceRange">Price</label>
                    <p id="pselected"></p>
                </div>
                <input id="priceRange" type="range" class="custom-range" min="0" max="2000">
            </div>

            <div class="mr-2">
                <span class="">Sort by</span>
                <div id="sortby" class="btn-group rightborder pl-2 bg-light mr-2">
                    <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                        Our recommendations
                    </button>
                    <!-- SORTTTTTTT -->
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button" id="sizeA">Size Desc</button>
                        <button class="dropdown-item" type="button" id="sizeB">Size Asc</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="auctions" class="d-flex flex-row">

    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    <script>
        jQuery(init);

        function init($) {
            const auctions = [];
             const eventSource = new EventSource('http://localhost:8080/notification');
             eventSource.onmessage = e => {
                    auctions = e.data;
                    console.log(auctions);
                    
//                    $(auctions).each(function(key,value){
////                        console.log(value);
//                    });
////                    console.log(auctions);
                    
                };
             
//            const auctions = [{ "auction": { "id": 1, "title": "To spiti tou mamra", "reserve": 900, "remaining_time": 596408180 }, "location": "Karaiskai 5", "size": 50, "bedrooms": 2, "bathrooms": 1, "heating": "no", "userid": 2, "username": "emergon", "furnished": "no" }, { "auction": { "id": 2, "title": "Renovated home", "reserve": 700, "remaining_time": 596464180 }, "location": "Navarinou 8", "size": 70, "bedrooms": 2, "bathrooms": 1, "heating": "fusiko aerio", "userid": 2, "username": "emergon", "furnished": "No" }];
//            const auction = [];
            // const title = [];
            // const address = [];
            // const price = [];
            // const size = [];
            console.log(auctions);
            const listofauctions = $("#auctions");

        }
//            function displayAuctions(auctions) {
//                listofauctions.empty();
//                $(auctions).each(function (key, value) {
//                    auction.push(value);
//                    // auction.push(value.auction.title);
//                    // auction.push(value.location);
//                    // auction.push(value.auction.reserve);
//                    // auction.push(value.size);
//                    // auction.push(value.furnished);
//                    // auction.push(value.auction.remaining_time);
//                    const templ = ` <div class="card mb-3 ml-2" style="width: 18rem;">
//        <div class="card-body">
//            <h5 class="card-title">${value.auction.title}</h5>
//            <h6 class="card-subtitle mb-2 text-muted"> ${value.location} </h6>
//            <ul class="list-group list-group-flush">
//                <li class="list-group-item">
//                    <div id="price" class="font-weight-bold">Reserve Price: </div>$${value.auction.reserve}</li>
//                <li class="list-group-item">
//                    <div id="size" class="font-weight-bold">Size: </div> ${value.size} m<sup>2<sup></li>
//                <li class="list-group-item">
//                    <div class="font-weight-bold">Furnished: </div> ${value.furnished}</li>
//                <li class="list-group-item">
//                    <div class="font-weight-bold">Remaining Time: </div> ${msToTime(value.auction.remaining_time)}</li>
//            </ul>
//            <div class="card-footer">
//                <button class="btn btn-primary w-100"><a class="text-white" href="#">View more details</a></button>
//            </div>
//        </div>
//    </div>`;
//                    listofauctions.append(templ);
//                    // location.reload();
//                });
//
//            }
//            console.log(auctions);
//            displayAuctions(auctions);
//            const priceSlider = $('#priceRange');
//
//            priceSlider.on('input', (p) => {
//                // console.log('on input:' + p.target.value);
//                $('#pselected').text('$' + p.target.value);
//            });
//
//            priceSlider.on('change', (p) => {
//                const filterauc = getFilteredProducts(auctions, p.target.value);
//                displayAuctions(filterauc);
//            });
//
//            function getFilteredProducts(list, limit) {
//                const filterd = list.filter((auction) => {
//                    return parseFloat(auction.auction.reserve) < limit;
//                });
//                return filterd;
//            }
//
//            $('#sizeA').on('click', function () {
//                auctions.sort(function (a, b) {
//                    if (a.size < b.size)
//                        return 1;
//                    if (a.size > b.size)
//                        return -1;
//                    return 0;
//                });
//                displayAuctions(auctions);
//            })
//
//            $('#sizeB').on('click', function () {
//                auctions.sort(function (a, b) {
//                    if (a.size < b.size)
//                        return -1;
//                    if (a.size > b.size)
//                        return 1;
//                    return 0;
//                });
//                displayAuctions(auctions);
//            })
//
//
//        }
//
//        function msToTime(s) {
//
//            // Pad to 2 or 3 digits, default is 2
//            function pad(n, z) {
//                z = z || 2;
//                return ('00' + n).slice(-z);
//            }
//
//            let ms = s % 1000;
//            s = (s - ms) / 1000;
//            let secs = s % 60;
//            s = (s - secs) / 60;
//            let mins = s % 60;
//            let hrs = (s - mins) / 60;
//
//            return pad(hrs) + 'hr : ' + pad(mins) + 'min : ' + pad(secs) + 'secs.';
//        }
//
//


    </script>
<!--           <script>
            jQuery(init);

            function init($) {
                const eventSource = new EventSource('http://localhost:8080/notification');
                
                eventSource.onmessage = e => {
                    const auctions = e.data;
                    console.log(auctions);
                    
//                    $(auctions).each(function(key,value){
////                        console.log(value);
//                    });
////                    console.log(auctions);
                    
                };
//                console.log(auctions);
//                    document.getElementById("greet").innerHTML = msg;
//                    console.log(e.data);

//                    $(msg).each(function(key,value){
//                        auctions.push(value);
//                        console.log(value);
//                    });


            }
            window.onload = init;
        </script>-->
    </body>
</html>
