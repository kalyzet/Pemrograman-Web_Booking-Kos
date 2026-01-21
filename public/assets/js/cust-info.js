const swiperTabs = new Swiper(".swiper", {
    slidesPerView: "auto",
    spaceBetween: 14,
    slidesOffsetAfter: 20,
    slidesOffsetBefore: 20,

    freeMode: true,

    noSwiping: true,
    noSwipingClass: "no-swipe",

    preventClicks: false,
    preventClicksPropagation: false,
});

const datesElement = document.querySelector(".select-dates");

const startDate = new Date();

const endDate = new Date(2026, 11, 31);

while (startDate <= endDate) {
    const day = startDate.getDate();
    const month = startDate.toLocaleString("id-ID", { month: "short" });

    const realDate = startDate.toISOString().split("T")[0];

    datesElement.innerHTML += `
        <div class="swiper-slide !w-fit py-[2px]">
            <label class="no-swipe relative flex flex-col items-center justify-center w-fit rounded-3xl p-[14px_20px] gap-3 bg-white border border-white hover:border-[#91e2eb] has-[:checked]:ring-2 has-[:checked]:ring-[#91e2eb] transition-all duration-300">
                <img src="/assets/images/icons/calendar.svg" class="w-8 h-8" alt="icon">
                <p class="font-semibold text-nowrap">${day} ${month}</p>
                <input
                    type="radio"
                    name="start_date"
                    class="absolute top-1/2 left-1/2 -z-10 opacity-0"
                    value="${realDate}"
                    required
                >
            </label>
        </div>
    `;

    startDate.setDate(startDate.getDate() + 1);
}

const minusButton = document.getElementById("Minus");
const plusButton = document.getElementById("Plus");
const durationInput = document.getElementById("Duration");
const priceElement = document.getElementById("price");
const maxDuration = 999; // Maximum allowed value

function updatePrice() {
    let duration = parseInt(durationInput.value, 10);

    // Only update price if the value is a valid number
    if (!isNaN(duration) && duration >= 1 && duration <= maxDuration) {
        const totalPrice = defaultPrice * duration;
        priceElement.innerHTML = `Rp ${totalPrice.toLocaleString()}`;
    }
}

function validateInput(value) {
    // Replace any non-digit characters and limit to 3 digits
    value = value.replace(/\D/g, "").slice(0, 3);

    // Ensure value is not zero
    if (parseInt(value, 10) === 0) {
        return "1";
    }

    return value;
}

// Restrict input to numbers only, with a max of 3 digits
durationInput.addEventListener("input", () => {
    let value = validateInput(durationInput.value);

    // Prevent auto-reset to 1 when the input is being cleared for new value
    if (value === "") {
        durationInput.value = ""; // Allow the input to be empty
        priceElement.innerHTML = "Rp 0"; // Optionally show 0 or placeholder
        return;
    }

    durationInput.value = value;
    updatePrice();
});

durationInput.addEventListener("blur", () => {
    // If the input is empty or zero when it loses focus, set it back to 1
    if (durationInput.value === "" || parseInt(durationInput.value, 10) === 0) {
        durationInput.value = "1";
        updatePrice();
    }
});

minusButton.addEventListener("click", () => {
    let value = parseInt(durationInput.value, 10);
    if (isNaN(value) || value <= 1) {
        value = 1; // Prevent going below 1
    } else {
        value--;
    }
    durationInput.value = value;
    updatePrice();
});

plusButton.addEventListener("click", () => {
    let value = parseInt(durationInput.value, 10);
    if (isNaN(value)) {
        value = 1; // Default to 1 if invalid
    } else if (value < maxDuration) {
        value++;
    } else {
        value = maxDuration; // Prevent going above 999
    }
    durationInput.value = value;
    updatePrice();
});

// Initial price update
updatePrice();
