<section class="container-fluid portfolio">
    <div class="media-container-row">
        <div class="col-12">
        <div class="portfolio-filter-select-xs-sm">
            <select id="portfolio-filter-select">
            <!--<option value="all">Все работы</option>
            <option value="wedding">Свадьбы</option>
            <option value="love-story">Love story</option>
            <option value="family">Семейные</option>
            <option value="other">Другое</option>-->
            [[!parseCategorySelectorSelectJSON? &input=`[[*categorySelector]]` &tpl=`categorySelectorItemSelect`]]
            </select>
        </div>
        <input id="filter-hidden" name="filter-hidden" type="hidden" value="[[!setFilterHidden]]">
        <div class="portfolio-filter-select-md-lg-xl">
            <nav class="navbar">
            <div class="d-flex mx-auto">
                <ul class="navbar-nav">
                [[!parseCategorySelectorButtonJSON? &input=`[[*categorySelector]]` &tpl=`categorySelectorItemButton`]]
                </ul>
            </div>
            </nav>
        </div>
        </div>
    </div>
    <div class="portfolio-photos media-container-row" id="gallery_all">
        [[!parseJSON? &input=`[[*portfolioGallery]]` &tpl=`portfolioItem` &tplWithoutShowmore=`portfolioGalleryBottomWithoutShowMoreButton` &tplWithShowmore=`portfolioGalleryBottomWithShowMoreButton` &show_more=1 &limit=6 &first_load_page=1]]  
</section>