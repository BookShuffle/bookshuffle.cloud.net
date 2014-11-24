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
		docscroll = 0;

	function scrollY() {
		return window.pageYOffset || window.document.documentElement.scrollTop;
	}

	function Book( el ) {

		this.bbWrapper = el;
		if( this.bbWrapper ) {
			this._initBookBlock();
		}
		this._initEvents();

		this._open();
	}

	Book.prototype._initBookBlock = function() {
		// initialize bookblock instance
		this.bb = new BookBlock( this.bbWrapper.querySelector( '.bb-bookblock' ), {
			speed : 700,
			shadowSides : 0.8,
			shadowFlip : 0.4
		} );
		// boobkblock controls
		this.ctrlBBNext = this.bbWrapper.querySelector( ' .bb-nav-next' );
		this.ctrlBBPrev = this.bbWrapper.querySelector( ' .bb-nav-prev' );

		this.bbWrapper.setAttribute("pageId", this.bb.currentIdx);
	}

	Book.prototype._initEvents = function() {
		var self = this;

		if( this.bb ) {
			this.ctrlBBNext.addEventListener( 'click', function( ev ) { ev.preventDefault(); self._nextPage(); } );
			this.ctrlBBPrev.addEventListener( 'click', function( ev ) { ev.preventDefault(); self._prevPage(); } );
		}
	}

	Book.prototype._open = function() {
		docscroll = scrollY();

		classie.add( this.bbWrapper, 'show' );

		var self = this,
			onOpenBookEndFn = function( ev ) {
				this.removeEventListener( animEndEventName, onOpenBookEndFn );
				document.body.scrollTop = document.documentElement.scrollTop = 0;
			};

		if( supportAnimations ) {
			this.bbWrapper.addEventListener( animEndEventName, onOpenBookEndFn );
		}
		else {
			onOpenBookEndFn.call();
		}
	}

	Book.prototype._nextPage = function() {
		this.bbWrapper.setAttribute("pageId", this.bb.currentIdx + 1);
		this.bb.next();
	}

	Book.prototype._prevPage = function() {
		this.bbWrapper.setAttribute("pageId", this.bb.currentIdx - 1);
		this.bb.prev();
	}

	el = document.getElementById( 'book' );
	new Book( el );
})();
