import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
const initFlatPicker = () => {
const bookingForm = document.getElementById('booking-form-div');

 if (bookingForm) {
  const deals = JSON.parse(bookingForm.dataset.bookings);
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    minDate: "today",
    inline: true,
    dateFormat: "Y-m-d",
    "disable": deals,
  });
};
};
export { initFlatPicker };
