$(document).ready(function() {
    $('#dtHorizontalExample').DataTable({
        "scrollX": true
    });
    $('.dataTables_length').addClass('bs-select');


});

function ambilData(id) {
    var link = $('#baseurl').val();
    var base_url = link + 'pelanggan/getData';

    $.ajax({
        type: 'POST',
        data: 'id=' + id,
        url: base_url,
        dataType: 'json',
        success: function(hasil) {
            $('#idpelanggan').val(hasil[0].id_pelanggan);
            $('#pelanggan').val(hasil[0].nama_pelanggan);
            $('#notelp').val(hasil[0].notelp);
            $('#alamat').val(hasil[0].alamat);
        }
    });
}

function konfirmasi(id) {
    var base_url = $('#baseurl').val();

    swal.fire({
        title: "Hapus Data ini?",
        icon: "warning",
        closeOnClickOutside: false,
        showCancelButton: true,
        confirmButtonText: 'Iya',
        confirmButtonColor: '#4e73df',
        cancelButtonText: 'Batal',
        cancelButtonColor: '#d33',
    }).then((result) => {
        if (result.value) {
            Swal.fire({
                title: "Memuat...",
                onBeforeOpen: () => {
                    Swal.showLoading()
                },
                timer: 1000,
                showConfirmButton: false,
            }).then(
                function() {
                    window.location.href = base_url + "pelanggan/proses_hapus/" + id;
                }
            );
        }
    });

}
