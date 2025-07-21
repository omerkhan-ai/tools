document.addEventListener("DOMContentLoaded", () => {
  const title = document.getElementById("title");
  const text = " Omrfrfr's Toolbox ";
  let index = 0;

  function typeWriter() {
    if (index < text.length) {
      title.textContent += text.charAt(index);
      index++;
      setTimeout(typeWriter, 50);
    } else {
      // Once typing is complete, animate cards
      animateCards();
    }
  }

  function animateCards() {
    const cards = document.querySelectorAll(".tool-card");

    // Use GSAP to animate all cards once DOM and typing are ready
    gsap.fromTo(
      cards,
      {
        opacity: 0,
        y: 40,
      },
      {
        opacity: 1,
        y: 0,
        duration: 0.6,
        stagger: 0.2,
        ease: "power2.out",
      }
    );
  }

  // Start typing animation
  typeWriter();
});
