<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/restaurant.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <div class="containerx">
        <h1>add items</h1>
        <div class="test">
                <input type="text" id="count" placeholder="noof-items">
        </div>
        <button class="btn btn-primary" id="add">add items</button>
        <div class="items">
            <form method="dialog" action="#">
                <h5 id="item">item-no </h5>
                <label for="name">name</label>
                <input type="text" id="name">
                <label for="num">quantity</label>
                <input type="text" placeholder="Enter number" id="num">
                <label for="num">url</label>
                <input type="text" placeholder="Enter number" id="url">
                <button id="sub" type="submit">Submit</button>
                <button id="close">close</button>
            </form>
        </div>
    </div>
    <div class="list">
        <h1>list of items <span> <a href="/">go to home</a></span></h1>
       
    <div class="cards">
        <div class="item">
            <img src="../static/item1.jpg" alt="Card Image">
            <div class="card-content">
                <h2>Barbeque Nation</h2>
                <p>Paneer tikka</p>
                <a href="#" class="button">Read More</a>
            </div>
        </div>
    </div>
</div>
    <script>
        const btn = document.getElementById('add')
        const close = document.getElementById('close')
        const card = document.getElementById('sub')
        var n=document.getElementById('count')
        var num=0
        btn.addEventListener('click', () => {
            let item = document.querySelector('.items')
            item.style.display = 'block'
            num=parseInt(n.value)
            console.log(num);
            document.getElementById('item').innerHTML=`item-number ${num}`
        })
        close.addEventListener('click', () => {
            let item = document.querySelector('.items')
            item.style.display = 'none'
        })
        card.addEventListener('click', (e) => {
            
            document.getElementById('item').innerHTML=`item-number ${num-1}`
            if(num>0 ){
                const item = `  <div class="item">
            <img src=${document.getElementById('url').value} alt="Card Image">
            <div class="card-content">
                <h2>${document.getElementById('name').value}</h2>
                <p>This is a sample card content. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
               <h6> quantity is ${document.getElementById('num').value}</h6>
                <a href="#" class="button">Read More</a>
            </div>
        </div>`
            let x = document.querySelector('.cards')
            let c = document.createElement('div')
            c.innerHTML = item
            x.append(c)
            console.log(x.classList.add('test'));
            num--
            console.log(num);
            }
           if(num==0 || num=="NaN"){
                let item = document.querySelector('.items')
            item.style.display = 'none'
            }

        })


    </script>
</body>

</html>