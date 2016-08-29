var JaS = {
	// Customization parameters
	imagePath : "pictures/",
	images : [
		["1.jpeg", "Bat bridge in Austin", "Bridge"],
		["2.jpeg", "Blossoming tree", "Tree"],
		["3.jpeg", "Bat bridge from below", "Bridge"],
		["4.jpeg", "Birds", "Birds"],
		["5.jpeg", "Stevie Ray Vaughan Memorial", "Memorial"],
		["6.jpeg", "Me in river park", "River park"],
		["7.jpeg", "Woode Wood playing guitar", "Woode Wood, River park"], // Separate multiple tags by a comma
		["8.jpg", "Woode's sign", "Woode Wood"]
	],
	fadeContainerId : "jas-container",
	imageContainerId : "jas-image",
	imageTextContainerId : "jas-image-text",
	previousLinkId : "previous-image",
	nextLinkId : "next-image",
	imageCounterId : "image-counter",
	startSlideShowId : "start-slideshow",
	stopSlideShowId : "stop-slideshow",
	thumbnailContainerId: "jas-thumbnails",
	tagsContainerId: "jas-tags",
	tagsSelectAllId: "jas-select-all-tags",
	useImageText : true,
	useThumbnails : true,
	useTags : true,
	useKeyboardShortcuts : true,
	useFadingIn : true,
	useFadingOut : true,
	useFadeWhenNotSlideshow : false,
	useFadeForSlideshow : true,
	useFadeAtInitialLoad : false,
	fadeIncrement : 0.1,
	fadeInterval : 100, // Milliseconds
	timeForSlideInSlideshow : 1500, // Milliseconds

	// JaS function parameters
	allImages : null,
	currentImages : null,
	fadeContainer : null,
	imageContainer : null,
	imageTextContainer : null,
	previousLink : null,
	nextLink : null,
	imageCounter : null,
	startSlideShowLink : null,
	stopSlideShowLink : null,
	thumbnailContainer : null,
	thumbnailCollection : [],
	currentThumbnailSelected : null,
	tagsContainer : null,
	tagsSelectAll : null,
	tagsList : null,
	tags : [],
	tagsCheckboxes : [],
	selectAllTags : true,
	imageText : null,
	imageText : "",
	imageSource : "",
	imageIndex : 0,
	fadingIn : true,
	fadeLevel : 0,
	fadeEndLevel : 1,
	fadeTimer : null,
	hasOpacitySupport : false,
	useMSFilter : false,
	useMSCurrentStyle : false,
	slideshowIsSupported : false,
	slideshowIsPlaying : false,
	functionAfterFade : null,
	isInitialLoad : false,

	init : function (){
    	if(document.getElementById){
			this.fadeContainer = document.getElementById(this.fadeContainerId);
			this.imageContainer = document.getElementById(this.imageContainerId);
			this.slideshowIsSupported = this.fadeContainer && this.imageContainer;
			if(this.slideshowIsSupported){
				this.allImages = this.images;
				this.currentImages = this.images;
				if(this.useImageText){
					this.imageTextContainer = document.getElementById(this.imageTextContainerId);
					if(!this.imageTextContainer){
						this.useImageText = false;
					}
				}
				this.hasOpacitySupport = typeof this.fadeContainer.style.filter != "undefined" || typeof this.fadeContainer.style.opacity != "undefined";
				this.useMSFilter = typeof this.fadeContainer.style.filter != "undefined";
				this.useMSCurrentStyle = typeof this.fadeContainer.currentStyle != "undefined";

				this.previousLink = document.getElementById(this.previousLinkId);
				this.previousLink.onclick = function(oEvent){
					var oEvent = (typeof oEvent != "undefined")? oEvent : event;
					JaS.preventDefaultEventBehavior(oEvent);
					JaS.previousImage();
				};
				this.nextLink = document.getElementById(this.nextLinkId);
				this.nextLink.onclick = function(oEvent){
					var oEvent = (typeof oEvent != "undefined")? oEvent : event;
					JaS.preventDefaultEventBehavior(oEvent);
					JaS.nextImage();
				};
				this.imageCounter = document.getElementById(this.imageCounterId);
				this.startSlideShowLink = document.getElementById(this.startSlideShowId);
				if(this.startSlideShowLink){
					this.startSlideShowLink.style.display = "inline";
				}
				this.startSlideShowLink.onclick = function(oEvent){
					var oEvent = (typeof oEvent != "undefined")? oEvent : event;
					JaS.preventDefaultEventBehavior(oEvent);
					JaS.startSlideshow();
				};
				this.stopSlideShowLink = document.getElementById(this.stopSlideShowId);
				if(this.stopSlideShowLink){
					this.stopSlideShowLink.style.display = "none";
				}
				this.stopSlideShowLink.onclick = function(oEvent){
					var oEvent = (typeof oEvent != "undefined")? oEvent : event;
					JaS.preventDefaultEventBehavior(oEvent);
					JaS.stopSlideshow();
				};

				if(this.useKeyboardShortcuts){
					document.onkeydown = function(oEvent){
						var oEvent = (typeof oEvent != "undefined")? oEvent : event;
						JaS.applyKeyboardNavigation(oEvent);
					};
				}

				this.thumbnailContainer = document.getElementById(this.thumbnailContainerId);
				if(this.useThumbnails && this.thumbnailContainer){
					this.createThumbnails();
				}

				this.tagsContainer = document.getElementById(this.tagsContainerId);
				if(this.useTags && this.tagsContainer){
					this.tagsSelectAll = document.getElementById(this.tagsSelectAllId);
					if(this.tagsSelectAll){
						this.tagsSelectAll.onclick = function (oEvent){
							JaS.tagsSelectAll = this.checked;
							JaS.markAllTags();
						};
						this.createTagList();
					}
				}

				this.isInitialLoad = true;
				this.setImage();
				this.isInitialLoad = false;
			}
		}
	},

	setImage : function (){
		if(this.currentImages.length > 0){
			this.imageContainer.style.visibility = "visible";
			this.imageSource = this.currentImages[this.imageIndex][0];
			this.imageText = this.currentImages[this.imageIndex][1];
			if(this.useFadingOut && (this.slideshowIsPlaying && this.useFadeForSlideshow) || (!this.slideshowIsPlaying && this.useFadeWhenNotSlideshow) && (this.useFadeAtInitialLoad && this.isInitialLoad || !this.isInitialLoad)){
				this.fadeOut();
			}
			else{
				this.displayImageCount();
				this.imageContainer.setAttribute("src", (this.imagePath + this.imageSource));
				this.setImageText();
				this.previousLink.style.visibility = (this.imageIndex > 0)? "visible" : "hidden";
				this.nextLink.style.visibility = (this.imageIndex < (this.currentImages.length - 1))? "visible" : "hidden";
				if((this.useFadeAtInitialLoad && this.isInitialLoad || !this.isInitialLoad) && ((this.slideshowIsPlaying && this.useFadeForSlideshow) || (!this.slideshowIsPlaying && this.useFadeWhenNotSlideshow))){
					this.fadeIn();
				}
			}
			if(this.useThumbnails){
				this.markCurrentThumbnail();
			}
		}
		else{
			this.imageSource = "";
			this.imageText = "";
			this.displayImageCount();
			this.imageContainer.style.visibility = "hidden";
			this.setImageText();
		}
	},

	displayImageCount : function (){
    	if(this.imageCounter){
			this.imageCounter.innerHTML = (((this.currentImages.length > 0)? this.imageIndex : -1) + 1) + " / " + this.currentImages.length;
		}
	},

	nextImage : function (){
		if(this.imageIndex < (this.currentImages.length - 1)){
			++this.imageIndex;
			this.setImage();
		}
		else if(this.slideshowIsPlaying){
			this.stopSlideshow();
			this.imageIndex = 0;
			this.setImage();
		}
	},

	previousImage : function (){
		if(this.imageIndex > 0){
			--this.imageIndex;
			this.setImage();
		}
	},

	setImageText : function (){
		this.imageTextContainer.setAttribute("alt", this.imageText);
    	if(this.useImageText && typeof this.imageText == "string"){
			this.imageTextContainer.innerHTML = this.imageText;
		}
	},

	startSlideshow : function (){
		if(this.currentImages.length > 0){
			this.startSlideShowLink.style.display = "none";
			this.stopSlideShowLink.style.display = "inline";
			this.slideshowIsPlaying = true;
			this.fadeTimer = setTimeout("JaS.nextImage()", JaS.timeForSlideInSlideshow);
		}
	},

	stopSlideshow : function (){
		if(this.currentImages.length > 0){
			this.startSlideShowLink.style.display = "inline";
			this.stopSlideShowLink.style.display = "none";
			this.slideshowIsPlaying = false;
			this.setFadeParams(false, 1, 0);
			this.setFade();
			clearTimeout(this.fadeTimer);
		}
	},

	fadeIn : function (){
		this.setFadeParams(true, 0, 1);
		this.functionAfterFade = null;
		this.fade();
		if(this.slideshowIsPlaying){
			this.functionAfterFade = "this.startSlideshow()";
		}
	},

	fadeOut : function (){
		this.setFadeParams(false, 1, 0);
		this.functionAfterFade = "this.fadeOutDone()";
		this.fade();
	},

	fadeOutDone : function (){
        this.displayImageCount();
		this.imageContainer.setAttribute("src", (this.imagePath + this.imageSource));
		this.setImageText();
		if(this.useFadingIn){
			this.fadeIn();
		}
		else{
			this.fadeLevel = 1;
			this.setFade();
		}
	},

	fade : function (){
		if((this.fadingIn && this.fadeLevel < this.fadeEndLevel) || !this.fadingIn && this.fadeLevel > this.fadeEndLevel){
			this.fadeLevel = (this.fadingIn)? this.fadeLevel + this.fadeIncrement : this.fadeLevel - this.fadeIncrement;
			// This line is b/c of a floating point bug in JavaScript
			this.fadeLevel = Math.round(this.fadeLevel * 10) / 10;
			this.setFade();
			this.fadeTimer = setTimeout("JaS.fade()", this.fadeInterval);
		}
		else{
			clearTimeout(this.fadeTimer);
			if(this.functionAfterFade){
				eval(this.functionAfterFade);
			}
		}
	},

	setFade : function (){
		if(this.useMSFilter){
			this.fadeContainer.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=" + (this.fadeLevel * 100) + ")";
		}
		else{
			this.fadeContainer.style.opacity = this.fadeLevel;
		}
	},

	setFadeParams : function (bFadingIn, intStartLevel, intEndLevel){
		this.fadingIn = bFadingIn;
		this.fadeLevel = intStartLevel;
		this.fadeEndLevel = intEndLevel;
	},

	createThumbnails : function (){
		this.thumbnailContainer.innerHTML = "";
		this.thumbnailCollection = [];
    	var oThumbnailsList = document.createElement("ul");
		var oListItem;
		var oThumbnail;
		var oCurrentImage;
		for(var i=0; i<this.currentImages.length; i++){
        	oCurrentImage = this.currentImages[i];
			oListItem = document.createElement("li");
			oThumbnail = document.createElement("img");
			oThumbnail.setAttribute("id", ("jas-thumbnail-" + i));
			oThumbnail.setAttribute("src", (this.imagePath + oCurrentImage[0]));
			oThumbnail.setAttribute("alt", oCurrentImage[1]);
			oThumbnail.setAttribute("title", oCurrentImage[1]);
			oThumbnail.onclick = function (oEvent){
				JaS.imageIndex = parseInt(this.getAttribute("id").replace(/\D*(\d+)$/, "$1"), 10);
				JaS.setImage();
			};
			this.thumbnailCollection.push(oThumbnail);
			oListItem.appendChild(oThumbnail);
			oThumbnailsList.appendChild(oListItem);
        }
		this.thumbnailContainer.appendChild(oThumbnailsList);
		if(this.thumbnailCollection.length > 0){
			this.markCurrentThumbnail();
		}
		if(this.slideshowIsPlaying){
			this.stopSlideshow();
		}
	},

	markCurrentThumbnail : function (){
		if(this.currentThumbnailSelected){
	        this.currentThumbnailSelected.className = "";
			// Sometimes, in IE, the image loses its reference to its parent
			if(this.currentThumbnailSelected.parentNode){
				this.currentThumbnailSelected.parentNode.className = "";
			}
		}
		this.currentThumbnailSelected = this.thumbnailCollection[this.imageIndex];
		this.currentThumbnailSelected.className = "selected";
		this.currentThumbnailSelected.parentNode.className = "selected-parent";
	},

	createTagList : function (){
		var strCurrentTag;
		var arrCurrentTag;
		var oRegExp;
		for(var i=0; i<this.images.length; i++){
			arrCurrentTag = this.images[i][2].replace(/\s*(,)\s*/,  "$1").split(",");
			for(var j=0; j<arrCurrentTag.length; j++){
            	strCurrentTag = arrCurrentTag[j];
				oRegExp = new RegExp(strCurrentTag, "i");
				if(this.tags.toString().search(oRegExp) == -1){
					this.tags.push(strCurrentTag);
				}
            }
        }
		this.tagsList = document.createElement("ul");
		var oListItem;
		var oTagCheckbox;
		var oLabel;
		for(var k=0; k<this.tags.length; k++){
			oTag = this.tags[k];
			oListItem = document.createElement("li");
			oTagCheckbox = document.createElement("input");
			oTagCheckbox.setAttribute("type", "checkbox");
			oTagCheckbox.setAttribute("id", ("jas-" + oTag));
			oTagCheckbox.setAttribute("value", oTag);
			oTagCheckbox.checked = true;
			oTagCheckbox.onclick = function (oEvent){
				JaS.applyTagFilter();
			};
			oLabel = document.createElement("label");
			oLabel.setAttribute("for", ("jas-" + oTag));
			oLabel.innerHTML = oTag;
			this.tagsCheckboxes.push(oTagCheckbox);
			oListItem.appendChild(oTagCheckbox);
			oListItem.appendChild(oLabel);
			this.tagsList.appendChild(oListItem);
		}
		this.tagsContainer.appendChild(this.tagsList);
		// This loop is necessary since IE can only mark checkboxes as checked after they've been added to the document
		for(var l=0; l<this.tagsCheckboxes.length; l++){
			this.tagsCheckboxes[l].checked = true;
		}
	},

	applyTagFilter : function (){
		this.currentImages = [];
		var arrCurrentTags = [];
		var oCheckbox;
		for(var i=0; i<this.tagsCheckboxes.length; i++){
        	oCheckbox = this.tagsCheckboxes[i];
			if(oCheckbox.checked){
				arrCurrentTags.push(oCheckbox.value);
			}
        }
		var oRegExp;
		var oImage;
		for(var j=0; j<this.images.length; j++){
        	oImage = this.images[j];
			for(var k=0; k<arrCurrentTags.length; k++){
				oRegExp = new RegExp(arrCurrentTags[k], "i");
				if(oImage[2].search(oRegExp) != -1){
					this.currentImages.push(oImage);
					break;
				}
			}
        }

		if(this.useThumbnails){
			this.createThumbnails();
		}
		this.imageIndex = 0;
		this.setImage();
	},

	markAllTags : function (){
		for(var i=0; i<this.tagsCheckboxes.length; i++){
			this.tagsCheckboxes[i].checked = this.tagsSelectAll;
        }
		this.applyTagFilter();
	},

	closeSession : function (oEvent){
		JaS = null;
		delete JaS;
	},

	applyKeyboardNavigation : function (oEvent){
    	var intKeyCode = oEvent.keyCode;
    	if(!oEvent.altKey){
			switch(intKeyCode){
				case 32:
					this.slideshowIsPlaying = (this.slideshowIsPlaying)? false : true;
					if(this.slideshowIsPlaying){
						this.startSlideshow();
					}
					else{
						this.stopSlideshow();
					}
					this.preventDefaultEventBehavior(oEvent);
					break;
				case 37:
				case 38:
					this.previousImage();
					this.preventDefaultEventBehavior(oEvent);
					break;
				case 39:
				case 40:
					this.nextImage();
					this.preventDefaultEventBehavior(oEvent);
					break;
			}
		}
	},

	preventDefaultEventBehavior : function (oEvent){
		if(oEvent){
			oEvent.returnValue = false;
			if(oEvent.preventDefault){
				oEvent.preventDefault();
			}
		}
	}
};
// ---
addEvent(window, "load", function(){JaS.init();}, false);
addEvent(window, "unload", function(){JaS.closeSession();}, false);
// ---
// Utility functions
function addEvent(oObject, strEvent, oFunction, bCapture){
	if(oObject){
		if(oObject.addEventListener){
			oObject.addEventListener(strEvent, oFunction, bCapture);
		}
		else if(window.attachEvent){
			oObject.attachEvent(("on" + strEvent), oFunction)
		}
	}
}
// ---
if(typeof Array.prototype.push != "function"){
	Array.prototype.push = ArrayPush;
	function ArrayPush(value){
		this[this.length] = value;
	}
}
