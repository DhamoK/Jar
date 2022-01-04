function createNav() {
    let nav = document.querySelector('.navbar') ;

    nav.innerHTML = `
    <div class="nav">
        <img src="groccery_logo.png" class="brand-logo" alt="">
        <div class="nav-items">
            <div class="search">
                <input type="text" class="search-box" placeholder="search for vegetables and other products">
                <button class="search-btn">search</button>
            </div>
            <a href="#"><img src="profilelogo.jpg" alt=""></a>
            <a href="#"><img src="cartlogo.png" alt=""></a>
        </div>

    </div>
    <ul class="links-container">
        <li class="link-item"><a href="vegetables.jsp" class="link">Vegetables</a></li>
        <li class="link-item"><a href="fruits.jsp" class="link">Fruits</a></li>
        <li class="link-item"><a href="fgs.jsp" class="link">Food grains and spices</a></li>
        <li class="link-item"><a href="dairy.jsp" class="link">Dairy</a></li>
        <li class="link-item"><a href="dryfruits.jsp" class="link">Dry fruits</a></li>
    </ul>
    `;
}

createNav();
