<!DOCTYPE html>
<html>
  <head>
    <title>Data Siswa</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<?php echo base_url().'assets/css/bootstrap.css'?>" rel="stylesheet">
    <style>
    .file {
      visibility: hidden;
      position: absolute;
    }
    </style>
 
  </head>
  <body style="background:linear-gradient(rgba(47, 23, 15, 0.65), rgba(47, 23, 15, 0.65)), url('<?php echo base_url()?>assets/img/bg1.jpg');">
 
    <div class="container" class="md-form">
    <?php $this->load->view('menu');?> <!--Include menu-->
      <div class="col-md-12">
        <div class="row">
          <center>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                  <img src="<?php echo base_url().'assets/img/utm.jpg'?>" alt="Universitas Trunojoyo Madura" style="width: 450px;height: 400px">
                </div>
                <div class="item">
                  <img src="<?php echo base_url().'assets/img/itb.jpg'?>" alt="Institute Teknologi Bandung" style="width: 450px;height: 400px">
                </div>
                <div class="item">
                  <img src="<?php echo base_url().'assets/img/unm.jpg'?>" alt="Universitas Negeri Malang" style="width: 450px;height: 400px">
                </div>
                <div class="item">
                  <img src="<?php echo base_url().'assets/img/unair.jpg'?>" alt="Universitas Negeri Airlangga" style="width: 450px;height: 400px">
                </div>
                <div class="item">
                  <img src="<?php echo base_url().'assets/img/ipb.jpg'?>" alt="Institute Pertanian Bandung" style="width: 450px;height: 400px">
                </div>
                <div class="item">
                  <img src="<?php echo base_url().'assets/img/uny.jpg'?>" alt="Universitas Negeri Yogyakarta" style="width: 450px;height: 400px">
                </div>
              </div>

              <!-- Left and right controls -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only"></span>
              </a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only"></span>
              </a>
            </div>
          </center>
          <center><h2 style="color: white">Data Universitas</h2></center>
          <table class="table table-striped table-bordered">
            <tr>
              <th>Id Universitas</th>
              <th>Nama Universitas</th>
              <th>Total Prodi</th>
              <th>Alamat</th>
              <th>Deskripsi</th>
            </tr>
            <?php 
            $i=1;
            foreach($universitas as $s){ 
            ?>
            <tr>
              <td><?php echo $i ?></td>
              <td><?php echo $s->nama_universitas ?></td>
              <td><?php echo $s->total_prodi ?></td>
              <td><?php echo $s->alamat ?></td>
              <td><?php echo $s->deskripsi ?></td>
            </tr>
            <?php $i++;}?>
          </table>
        </div>
      </div>
    </div> <!-- /container -->
 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?php echo base_url().'assets/js/jquery.js'?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo base_url().'assets/js/bootstrap.min.js'?>"></script>
 
  </body>
</html>
