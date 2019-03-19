<header class="container-fluid fixed-top">
    <div class="container-center-xl">
        <nav class="navbar navbar-toggleable navbar-short navbar-expand-xl">       
        <button class="navbar-toggler navbar-toggler-left" ENGINE="button" data-toggle="collapse" data-target="#navbarHeaderMenu" aria-controls="navbarHeaderMenu" aria-expanded="true" aria-label="Toggle navigation">
            <div class="hamburger"><span></span><span></span><span></span><span></span></div>
        </button>
        <div class="menu-logo">
            <div class="nav-brand">
            <div class="navbar-caption-wrap"><a class="navbar-caption" href="[[++site_url]]"><img class="logo" src="[[++site_url]]static/img/logo.png" alt="СНЕГ photography логотип"></a></div>
            </div>
        </div>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarHeaderPhone" aria-controls="navbarHeaderPhone" aria-expanded="true" aria-label="Toggle navigation">
            <div class="phone"><i class="fas fa-phone fa-fw text-body"></i></div>
        </button>
        <div class="clearfix"></div>
        <div class="navbar-collapse collapse" id="navbarHeaderMenu">
            <div class="d-flex">
            <ul class="navbar-nav nav-dropdown mx-auto justify-content-center">
                [[!headerMenu? &parent=`4` &tpl=`headerMenuElement`]]
                [[!headerMenuElement? &id=`10` &tpl=`headerMenuElement`]]
                [[!headerMenuElement? &id=`11` &tpl=`headerMenuElement`]]
            </ul>
            </div>
        </div>
        <div class="navbar-collapse collapse" id="navbarHeaderPhone">
            <div class="d-flex">
            <ul class="navbar-nav nav-dropdown mx-auto justify-content-center">
                <li class="nav-item"><a class="nav-link" href="tel:[[getSiteSettings? &case=`phoneFirstCall`]]">[[getSiteSettings? &case=`phoneFirstText`]]</a></li>
                <li class="nav-item"><a class="nav-link" href="tel:[[getSiteSettings? &case=`phoneSecondCall`]]">[[getSiteSettings? &case=`phoneSecondText`]]</a></li>
            </ul>
            </div>
        </div>
        </nav>
    </div>
</header>