<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan extends CI_Controller {

	public function __construct() {
    parent::__construct();
    $this->load->helper('url');
    $this->load->helper('download');
	$this->load->library('pagination');
	$this->load->helper('cookie');
	$this->load->model('pelanggan_model');
  }
	
	public function index()
	{
		$data['title'] = 'Pelanggan';
		$data['pelanggan'] = $this->pelanggan_model->data()->result();

		$this->load->view('templates/header', $data);
		$this->load->view('pelanggan/index');
		$this->load->view('templates/footer');
	}

	public function proses_tambah()
	{
		$kode = 	$this->pelanggan_model->buat_kode();
		$pelanggan = $this->input->post('pelanggan');
		$notelp = 	$this->input->post('notelp');
		$alamat = 	$this->input->post('alamat');
		
		$data=array(
			'id_pelanggan'=> $kode,
			'nama_pelanggan'=> $pelanggan,
			'notelp'=> $notelp,
			'alamat'=> $alamat
		);

		$this->pelanggan_model->tambah_data($data, 'pelanggan');
		$this->session->set_flashdata('Pesan','
		<script>
		$(document).ready(function() {
			swal.fire({
				title: "Berhasil ditambahkan!",
				icon: "success",
				confirmButtonColor: "#4e73df",
			});
		});
		</script>
		');
    	redirect('pelanggan');
	}

	public function proses_ubah()
	{
		$kode = 	$this->input->post('idpelanggan');
		$pelanggan = $this->input->post('pelanggan');
		$notelp = 	$this->input->post('notelp');
		$alamat = 	$this->input->post('alamat');
		
		$data=array(
			'nama_pelanggan'=> $pelanggan,
			'notelp'=> $notelp,
			'alamat'=> $alamat
		);

		$where = array(
			'id_pelanggan'=>$kode
		);

		$this->pelanggan_model->ubah_data($where, $data, 'pelanggan');
		$this->session->set_flashdata('Pesan','
		<script>
		$(document).ready(function() {
			swal.fire({
				title: "Berhasil diubah!",
				icon: "success",
				confirmButtonColor: "#4e73df",
			});
		});
		</script>
		');
    	redirect('pelanggan');
	}

	public function proses_hapus($id)
	{
		$where = array('id_pelanggan' => $id );
		$this->pelanggan_model->hapus_data($where, 'pelanggan');
		$this->session->set_flashdata('Pesan','
		<script>
		$(document).ready(function() {
			swal.fire({
				title: "Berhasil dihapus!",
				icon: "success",
				confirmButtonColor: "#4e73df",
			});
		});
		</script>
		');
		redirect('pelanggan');
	}

	public function getData()
	{
		$id = $this->input->post('id');
    	$where = array('id_pelanggan' => $id );
    	$data = $this->pelanggan_model->detail_data($where, 'pelanggan')->result();
    	echo json_encode($data);
	}

}
