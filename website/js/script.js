// ==========================================
// Smooth Scroll Reveal Animation
// ==========================================

const observer = new IntersectionObserver((entries) => {

    entries.forEach((entry) => {

        if (entry.isIntersecting) {

            entry.target.classList.add("show");

        }

    });

}, {
    threshold: 0.15
});

document.querySelectorAll(".card, .feature-card, .resource-card, .stat-card, .future-card")
.forEach((el) => {

    el.classList.add("hidden");

    observer.observe(el);

});
