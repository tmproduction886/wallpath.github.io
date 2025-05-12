// Update copyright year automatically
document.addEventListener('DOMContentLoaded', function() {
    const currentYear = new Date().getFullYear();
    const copyrightElement = document.querySelector('.copyright p');
    if (copyrightElement) {
        copyrightElement.innerHTML = copyrightElement.innerHTML.replace('2025', currentYear);
    }

    // Add smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const target = document.querySelector(targetId);
            if (target) {
                window.scrollTo({
                    top: target.offsetTop,
                    behavior: 'smooth'
                });
            }
        });
    });

    // Simple animation on scroll
    const animateOnScroll = function() {
        const elements = document.querySelectorAll('.feature-card, .screenshot, .testimonial');
        
        elements.forEach(element => {
            const elementPosition = element.getBoundingClientRect().top;
            const screenPosition = window.innerHeight / 1.3;
            
            if (elementPosition < screenPosition) {
                element.style.opacity = '1';
                element.style.transform = element.classList.contains('feature-card') 
                    ? 'translateY(0)' 
                    : element.classList.contains('screenshot')
                    ? 'scale(1)'
                    : 'translateX(0)';
            }
        });
    };

    // Set initial states for animation
    document.querySelectorAll('.feature-card').forEach(card => {
        card.style.opacity = '0';
        card.style.transform = 'translateY(20px)';
        card.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });

    document.querySelectorAll('.screenshot').forEach(screenshot => {
        screenshot.style.opacity = '0';
        screenshot.style.transform = 'scale(0.95)';
        screenshot.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });

    document.querySelectorAll('.testimonial').forEach((testimonial, index) => {
        testimonial.style.opacity = '0';
        testimonial.style.transform = index % 2 === 0 ? 'translateX(-20px)' : 'translateX(20px)';
        testimonial.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
    });

    // Run animation function on load and scroll
    window.addEventListener('scroll', animateOnScroll);
    animateOnScroll(); // Run on initial load
}); 