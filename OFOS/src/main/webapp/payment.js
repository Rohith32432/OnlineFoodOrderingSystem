window.addEventListener("DOMContentLoaded", () => {
    const queryParams = new URLSearchParams(window.location.search);
    const totalAmount = queryParams.get("total");
    const paymentTotal = document.getElementById("payment-total");
    
    if (totalAmount) {
        paymentTotal.textContent = totalAmount;
    }
});
