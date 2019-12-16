<?php 

class ctrl_jurusan extends CI_Controller{
  function __construct(){
    parent::__construct();    
    $this->load->model('m_jurusan');
        $this->load->helper('url');
        if($this->session->userdata('akses') !== '3'){
          $url=base_url();
      redirect($url);
    }
  }
  function index(){
    $data['jurusan'] = $this->m_jurusan->tampil_data()->result();
    $this->load->view('v_jurusan',$data);
  }
  function jurusan(){
    $data['jurusan'] = $this->m_jurusan->tampil_data()->result();
    $this->load->view('v_jurusan',$data);
  }
  function hapus($id_jurusan){
    $where = array('id_jurusan' => $id_jurusan);
    $this->m_jurusan->hapus_data($where,'jurusan');
    redirect('/jurusan/index');
  }
  function edit($id_jurusan){
    $where = array('id_jurusan' => $id_jurusan);
    $data['jurusan'] = $this->m_jurusan->edit_data($where,'jurusan')->result();
    $this->load->view('kuliah/update',$data);
  }
  function update(){
    $id_jurusan = $this->input->post('id_jurusan');
    $nama_jurusan= $this->input->post('nama_jurusan');
    $keterangan = $this->input->post('keterangan');
    $prospek_kerja = $this->input->post('prospek_kerja');
   
    $data = array(
      'id_jurusan' => $id_jurusan,
      'nama_jurusan' => $nama_jurusan,
      'keterangan' => $keterangan,
      'prospek_kerja' => $prospek_kerja,

    );
   
    $where = array(
      'id_jurusan' => $id_jurusan
    );
   
    $this->m_jurusan->update_data($where,$data,'jurusan');
    redirect('jurusan/index');
  }
}