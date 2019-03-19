import '@/styles/app.scss'
import 'jquery/dist/jquery.slim'
import 'bootstrap'
import 'bootstrap-select/dist/js/bootstrap-select.min.js'
import fontawesome from '@fortawesome/fontawesome'
import faInstagram from '@fortawesome/fontawesome-free-brands/faInstagram'
import faBehance from '@fortawesome/fontawesome-free-brands/faBehance'
import faPhone from '@fortawesome/fontawesome-free-solid/faPhone'
import faCaretDown from '@fortawesome/fontawesome-free-solid/faCaretDown'
import faChevronUp from '@fortawesome/fontawesome-free-solid/faChevronUp'
import faChevronLeft from '@fortawesome/fontawesome-free-solid/faChevronLeft'
import faChevronRight from '@fortawesome/fontawesome-free-solid/faChevronRight'
import faSearch from '@fortawesome/fontawesome-free-solid/faSearch'
import '@fancyapps/fancybox/dist/jquery.fancybox.min.js'
import './scripts/fancybox.settings.js'
import 'owl.carousel/dist/owl.carousel.min.js'
import 'inputmask'
import 'inputmask/dist/inputmask/jquery.inputmask.js'
import './scripts'
fontawesome.library.add(faInstagram, faBehance, faPhone, faCaretDown, faChevronUp, faChevronLeft, faChevronRight, faSearch)
fontawesome.icon({prefix: 'fab', iconName: 'instagram'})
fontawesome.icon({prefix: 'fab', iconName: 'behance'})
fontawesome.icon({prefix: 'fas', iconName: 'phone'})
fontawesome.icon({prefix: 'fas', iconName: 'caret-down'})
fontawesome.icon({prefix: 'fas', iconName: 'chevron-up'})
fontawesome.icon({prefix: 'fas', iconName: 'chevron-left'})
fontawesome.icon({prefix: 'fas', iconName: 'chevron-right'})
fontawesome.icon({prefix: 'fas', iconName: 'search'})
