@extends('layouts.app')
@section('content')

<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

<x-laravel-ui-adminlte::adminlte-layout>
  <h1>Hello, world!</h1>
  <button class="btn-primary btn-tambah mb-2"><i class="fa fa-plus"></i> Tambah Data</button>
    <div class="container-fluid">
          <table class="table datatables table-striped" id="myTable">
            <thead>
              <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Code</th>
                <th>QR Code</th>
                <th>Masking</th>
                <th>Parsing</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
    </div>
    
<div class="modal fade" id="ModalAdd" tabindex="-1" aria-labelledby="ModalAddTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-transparent">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body px-sm-5 mx-50 pb-5">
                <h1 class="text-center mb-1" id="ModalAddTitle">User</h1>
                <p class="text-center">Enjoy your experiences🔎</p>
  
                <!-- form -->
               <div class="modal-body">
                  <div class="alert alert-danger d-none"></div>
                  <div class="alert alert-success d-none"></div>
                    <div class="col-12">
                        <label class="form-label" for="name">Name</label>
                        <input type="text" name="name" id="name" class="form-control" placeholder="input your name" autofocus/>
                        
                    </div>
                    <div class="col-12">
                        <label class="form-label" for="email">Email</label>
                        <input type="email" name="email" id="email" class="form-control"  placeholder="input your email"/>

                    </div>
                    <div class="col-12 text-center">
                        <button type="button" class="btn btn-success me-1 mt-1 btn-simpan">Save</button>
                        <button type="reset" class="btn btn-outline-secondary mt-1" data-bs-dismiss="modal" aria-label="Close">
                            Tutup
                        </button>
                    </div>
               </div>
            </div>
        </div>
    </div>
  </div>


        
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

    <script>
$.ajaxSetup({
        headers:{
            'X-CSRF-TOKEN': '{{ csrf_token() }}',
        }
    });

  $('#myTable').DataTable({
      processing:true,
      serverside:true,
      ajax:"{{ url('user/create') }}",
      columns:[{
        data:'DT_RowIndex',
        name:'DT_RowIndex',
        orderable:true,
        searchable:false
      },
      {data:'name', name:'name'},
      {data:'email', name:'email'},
      {data:'code', name:'code'},
      {data:'code', name:'qr_code', 
        render: function (data, type, row) {
            var qrCode = "https://api.qrserver.com/v1/create-qr-code/?data=" + encodeURIComponent(data) + "&size=100x100";
            return '<img src="' + qrCode + '" alt="QR Code" width="100">';
        }
      },
      {data:'code', name:'masking',
      render: function (data) {
                    var masking = data.substring(0, 3) + '****' + data.substring(7);
                    return masking;}
      },
      {data:'code', name:'parsing',
      render: function (data) {
                    var parsing = data.replace(/[^a-zA-Z]/g, '');
                    return parsing;}
      },
      {data:'aksi', name:'Aksi', orderable: false, searchable: false}
    ]
  
  });

  $('body').on('click','.btn-hapus',function () {
    if (confirm('Yakin mau hapus data ini?') == true) {
      var id = $(this).data('id');

      $.ajax({
        type: 'DELETE',
        url: 'user/' +id,
        success: function (response) {
          $('#myTable').DataTable().ajax.reload();
        }
      });
    }
  });

  $('body').on('click','.btn-edit',function () {
    var id = $(this).data('id');
    // alert('Oke Edit'); 
    $.ajax({
            url: 'user/' + id + '/edit',
            type:'GET',
            success:function (response) {
                // console.log(response.result);
                $('#ModalAdd').modal('show');
                $('#name').val(response.result.name);
                $('#email').val(response.result.email);
                $('.btn-simpan').off('click');
                        
                $('.btn-simpan').click(function () {
                    simpan(id);
                });
            }
          }); 
  });

       $('body').on('click','.btn-tambah',function (e) { 
        e.preventDefault();
        $('#ModalAdd').modal('show');
        $('.btn-simpan').off('click');
        $('.btn-simpan').click(function () { 
            simpan();
         });

    });

      function simpan(id = '') { 
            if (id == '') {
                var var_url = 'user';
                var var_type = 'POST';
            } else {
                var var_url = 'user/'+id;
                var var_type = 'PUT';
            }

            // Hapus pesan kesalahan saat elemen input dalam fokus
            $('input').on('focus', function () {
                var fieldName = $(this).attr('id');
                $('.'+fieldName).text('');
            });

            // Hapus pesan kesalahan saat pengguna mulai mengubah nilai input yang sudah divalidasi
            $('input').on('input', function () {
                var fieldName = $(this).attr('id');
                $('.'+fieldName).text('');
                $('#'+fieldName).removeClass('is-invalid');
            });

            $.ajax({
                url: var_url,
                type: var_type,
                data: {
                    name : $('#name').val(),
                    email : $('#email').val(),
                },
                success: function (response) {
                  if (response.success) {
                    console.log(response.errors);
                    $('.alert-success').removeClass('d-none');
                    $('.alert-success').html(response.success);                  
                    
                    $('#myTable').DataTable().ajax.reload();
                    $('#ModalAdd').fadeOut(1000, function () {
                        $('.modal-backdrop').remove();
                        $('#ModalAdd').modal('hide');
                        $('#name').val('');
                        $('#email').val('');
                        $('.alert-success').addClass('d-none');
                        $('.alert-success').html('');
                    });
                    } else if (response.errors) {
                        printErrorMsg(response.errors);
                    } else {
                        console.log('Terjadi kesalahan saat menyimpan data.');
                    }
                },
                error: function (xhr, status, error) {
                    console.log('Terjadi kesalahan dalam permintaan AJAX: ' + status + ' - ' + error);
                }
            });
        }

      
    </script>
</x-laravel-ui-adminlte::adminlte-layout>

@endsection