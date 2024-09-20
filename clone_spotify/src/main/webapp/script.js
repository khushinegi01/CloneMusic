let currentIndex = 0;
const slidesWrapper = document.querySelector('.slides-wrapper');
const slides = document.querySelectorAll('.slide');
const totalSlides = slides.length;

function moveSlides(n) {
	// Calculate the width of each slide
	const slideWidth = slides[0].clientWidth + 20; // Including margin-right
	currentIndex += n;

	if (currentIndex >= totalSlides) {
		currentIndex = 0;  // Loop back to the first slide
	} else if (currentIndex < 0) {
		currentIndex = totalSlides - 1;  // Loop to the last slide
	}

	const offset = -currentIndex * slideWidth;
	slidesWrapper.style.transform = `translateX(${offset}px)`;
}
