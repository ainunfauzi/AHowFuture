<!DOCTYPE html>
<html>
  <head>
    <title>Masuk</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="<?php echo base_url().'assets/css/bootstrap.css'?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url().'https://fonts.googleapis.com/css?family=Lato:300,400,700'?>">
    <link rel="stylesheet" href="<?php echo base_url().'assetss/fonts/ionicons.min.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/css/pikaday.min.css'?>">
    <style>
    .bg-1 { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
    }
    .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
    }
    .bg-3 { 
      background-color: #fff; /* White */
      color: #555555;
    }
    </style>
  </head>

  <body style="background:linear-gradient(rgba(47, 23, 15, 0.65), rgba(47, 23, 15, 0.65)), url('<?php echo base_url()?>assets/img/bg1.jpg');">
    <div class="container">
      <?php $this->load->view('menu');?> <!--Include menu-->
      <div class="container">
        <div class="row">
          <center>
          <h2 style="color: white">Selamat Datang <?php echo $this->session->userdata('ses_nama');?></h2><br>
          </center>
        </div>
      </div>
      <div class="container-fluid bg-1 text-center">
        <h3>Who Am I?</h3>
        <img src="<?php echo base_url().'assets/img/toga.jpg'?>" class="img-circle" alt="toga" width="350" height="350">
        <h3>I'm an Professor</h3>
      </div>

      <div class="container-fluid bg-2 text-center">
        <h3>What Am I?</h3>
        <p>Welcome To AHowFuture, you can also use this free service.</p>
      </div>

      <div class="container-fluid bg-3 text-center">
        <h3>Where To Find Me?</h3>
        <p>You can find me at Instagram, Twitter, Facebook and http://ahowfuture.com </p>
      </div>
      <br>
      <br>
 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?php echo base_url().'assets/js/jquery.js'?>"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo base_url().'assets/js/bootstrap.min.js'?>"></script>
    <script src="<?php echo base_url().'https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/pikaday.min.js'?>"></script>
    <script src="<?php echo base_url().'assets/js/theme.js'?>"></script>
  </body>
</html>
