<!DOCTYPE html>
<html>
  <head>
    <title>CHAT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<?php echo base_url().'assets/css/bootstrap.css'?>" rel="stylesheet">
    <script type="text/javascript" src="<?= base_url('assets/js/jquery.min.js') ?>"></script>
 
 
  </head>
  <body style="background:linear-gradient(rgba(47, 23, 15, 0.65), rgba(47, 23, 15, 0.65)), url('<?php echo base_url()?>assets/img/bg1.jpg');">
    <div class="container">
      <?php $this->load->view('menu');?> <!--Include menu-->
      <div class="col-md-12">
        <div class="row">
          <center>
            <marquee scrollamount="13"><h1 style="color: white"><b>H</b>alaman <b>S</b>edang <b>D</b>iperbaiki</h1></marquee>
            <img src="<?php echo base_url().'assets/img/google.gif'?>" alt="Google" style="width: 650px;height: 400px">
          </center>
        </div>
      </div>
    </div> <!-- /container -->
 
 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?php echo base_url().'assets/js/jquery.js'?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo base_url().'assets/js/bootstrap.min.js'?>"></script>
 
  </body>
</html>
