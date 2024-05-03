document.addEventListener('scroll', function() {
    const hero = document.querySelector('.hero');
    const { height } = hero.getBoundingClientRect();
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    
    // Calculate opacity: starts at 1 and approaches 0 as you scroll to the bottom of the hero section
    const opacity = 1 - (scrollTop / height);
    hero.style.opacity = opacity > 0 ? opacity : 0;
});


