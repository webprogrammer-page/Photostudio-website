<div class="inner">
    <h3>[[+name]]</h3><span class="subtitle">ПАКЕТ</span>
    <div class="clearfix"></div>
    <div class="battery-row">[[+image:notequalto=`content/`:then=`<img src="[[+image]]">`]]</div>
    <div class="clearfix"></div>
    <div class="text-content">[[+description]]</div>
    <div class="clearfix"></div>
    <div class="media-container-row no-gutters button-buy row-eq-height">
        <div class="col-12 d-flex">
        <button class="btn-flat-white btn-short mx-left" onclick="orderPackage('[[+titleTypePhotography]]','[[+name_for_modal]]', '[[+price_sale:is=``:then=`[[+price]]`:else=`[[+price_sale]]`]]')">ЗАКАЗАТЬ</button>
        [[+price_sale:is=``:then=`<div class="d-flex price"><div class="price-one">[[+price]]</div></div>`:else=`<div class="d-flex price-sale"><div class="price-old">[[+price]]</div><div class="price-new">[[+price_sale]]</div></div>`]]
        </div>
    </div>
    </div>
</div>