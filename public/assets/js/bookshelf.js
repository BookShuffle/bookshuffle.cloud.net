(function() {

	var supportAnimations = 'WebkitAnimation' in document.body.style ||
			'MozAnimation' in document.body.style ||
			'msAnimation' in document.body.style ||
			'OAnimation' in document.body.style ||
			'animation' in document.body.style,
		animEndEventNames = {
			'WebkitAnimation' : 'webkitAnimationEnd',
			'OAnimation' : 'oAnimationEnd',
			'msAnimation' : 'MSAnimationEnd',
			'animation' : 'animationend'
		},
		// animation end event name
		animEndEventName = animEndEventNames[ Modernizr.prefixed( 'animation' ) ],
		scrollWrap = document.getElementById( 'scroll-wrap' ),
		docscroll = 0,
		books = document.querySelectorAll( '#bookshelf > figure' );

	function scrollY() {
		return window.pageYOffset || window.document.documentElement.scrollTop;
	}

	function Book( el ) {
		this.el = el;
		this.book = this.el.querySelector( '.book' );
		this.ctrls = this.el.querySelector( '.buttons' );
		this.details = this.el.querySelector( '.details' );
		// create the necessary structure for the books to rotate in 3d
		this._layout();

		this._initEvents();
	}

	Book.prototype._layout = function() {
		if( Modernizr.csstransforms3d ) {
			this.book.innerHTML = '<div class="cover"><div class="front"></div><div class="inner inner-left"></div></div><div class="inner inner-right"></div>';
			var perspective = document.createElement( 'div' );
			perspective.className = 'perspective';
			perspective.appendChild( this.book );
			this.el.insertBefore( perspective, this.ctrls );
		}
		if( this.details ) {
			this.closeDetailsCtrl = document.createElement( 'span' )
			this.closeDetailsCtrl.className = 'close-details';
			this.details.appendChild( this.closeDetailsCtrl );
		}
	}

	Book.prototype._initEvents = function() {
		var self = this;
		if( !this.ctrls ) return;

		if( this.details ) {
			this.ctrls.querySelector( 'a:nth-child(2)' ).addEventListener( 'click', function( ev ) { ev.preventDefault(); self._showDetails(); } );
			this.closeDetailsCtrl.addEventListener( 'click', function() { self._hideDetails(); } );
		}
	}

	Book.prototype._showDetails = function() {
		classie.add( this.el, 'details-open' );
	}

	Book.prototype._hideDetails = function() {
		classie.remove( this.el, 'details-open' );
	}

	function init() {
		[].slice.call( books ).forEach( function( el ) {
			new Book( el );
		} );
	}

	init();

})();
