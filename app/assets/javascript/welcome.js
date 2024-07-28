document.addEventListener("turbolinks:load", function() {
	var dropdowns = document.querySelectorAll('[data-dropdown]');
	dropdowns.forEach(function(dropdown) {
		dropdown.addEventListener('click', function(event) {
			event.preventDefault();
			var dropdownContent = document.querySelector(dropdown.dataset.dropdown);
			dropdownContent.classList.toggle('hidden');
		});
	});
});
