$(document).ready(function() {
    $('#personelForm').on('submit', function(event) {
        var isValid = true;

        // Zorunlu alanları kontrol et
        $('#personelForm input[required]').each(function() {
            if ($(this).val() === '') {
                $(this).addClass('is-invalid');
                isValid = false;
            } else {
                $(this).removeClass('is-invalid');
            }
        });

        if (!isValid) {
            event.preventDefault();
            return false;
        }
    });
});