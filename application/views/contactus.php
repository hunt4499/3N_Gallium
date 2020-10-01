<!-- partial -->
<!-- $subject, $emailuser, $content, $host,$port,$username,$password,$from,$appname,$secure -->
<style>
  .error {
    color: red;
  }
</style>
<div class="content-wrapper">
  <div class="row ">
    <div class="col-md-8 offset-md-2 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          <?php if ($this->session->flashdata('send')) : ?>
            <div class="alert alert-success" role="alert">
              <?php echo $this->session->flashdata('send'); ?>
            </div>
          <?php endif; ?>
          <?php if ($this->session->flashdata('notsend')) : ?>
            <div class="alert alert-danger" role="alert">
              <?php echo $this->session->flashdata('notsend'); ?>
            </div>
          <?php endif; ?>
          <h4 class="card-title">Enquiry From</h4>
          <?= form_open_multipart('contactus/sendmail'); ?>
          <div class="row">
            <div class="col-md-6">
              <div  class="form-group">
                <label >First Name</label>
                <input type="text" class="form-control" id="linktes" placeholder="Enter First Name" name="firstname" value="<?php echo !empty($firstname) ? $firstname : ''; ?>">
                <?php echo form_error('firstname', '<div class="error">', '</div>'); ?>
              </div>
            </div>  
            <div class="col-md-6">
              <div id="" class="form-group">
                <label for="">Last Name</label>
                <input type="text" class="form-control" id="linktes" placeholder="Enter Last Name" name="lastname" value="<?php echo !empty($lastname) ? $lastname : ''; ?>">
                <?php echo form_error('lastname', '<div class="error">', '</div>'); ?>
              </div>
            </div>
          </div>
          <div id="" class="form-group">
            <label for="">Email</label>
            <input type="email" class="form-control" id="linktes" placeholder="Enter email Address" name="emailothers" value="<?php echo !empty($emailothers) ? $emailothers : ''; ?>">
            <?php echo form_error('emailothers', '<div class="error">', '</div>'); ?>
          </div>

          <div class="form-group">
            <label for="">Subject</label>
            <input type="text" class="form-control" id="newstitle" placeholder="Enter subject" name="subject" value="<?php echo !empty($subject) ? $subject : ''; ?>">
            <?php echo form_error('subject', '<div class="error">', '</div>'); ?>
          </div>
          <div class="form-group">
            <label for="">Company name</label>
            <input type="text" class="form-control" id="Company_name" placeholder="Company name" name="companyname" value="<?php echo !empty($companyname) ? $companyname : ''; ?>">
            <?php echo form_error('companyname', '<div class="error">', '</div>'); ?>
          </div>
          <div class="form-group">
            <label for="">Phone Number</label>
            <input type="number" class="form-control" id="PhoneNumber" placeholder="Phone Number" name="phoneNumber" value="<?php echo !empty($phoneNumber) ? $phoneNumber : ''; ?>">
            <?php echo form_error('phoneNumber', '<div class="error">', '</div>'); ?>
          </div>


          <div class="form-group">
            <label for="newscontent">Email Content</label>
            <textarea type="text" class="form-control summernoteExample2 " id="" placeholder="Location" name="content"></textarea>
          </div>
          <div class="g-recaptcha" data-sitekey="6LfkO9IZAAAAAMPiRRTDVjGuYiogWxmeuGZxrOU8"></div>
          <?php if ($this->session->flashdata('captcha')) : ?>
            <div class="alert alert-danger" role="alert">
              <?php echo $this->session->flashdata('captcha'); ?>
            </div>
          <?php endif; ?>
          <button type="submit" class="btn btn-success">Send<i class="mdi mdi-send ml-1"></i></button>

          <?= form_close(); ?>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end of content wrapper -->
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
  function admSelectCheck(nameSelect) {
    console.log(nameSelect);
    if (nameSelect) {
      userValue = document.getElementById("users").value;
      driverValue = document.getElementById("drivers").value;
      bothValue = document.getElementById("other").value;
      if (userValue == nameSelect.value) {
        document.getElementById("linktes").required = false;
        document.getElementById("usercheck").style.display = "block";
        document.getElementById("drivercheck").style.display = "none";
        document.getElementById("othercheck").style.display = "none";
      } else if (driverValue == nameSelect.value) {
        document.getElementById("linktes").required = false;
        document.getElementById("drivercheck").style.display = "block";
        document.getElementById("usercheck").style.display = "none";
        document.getElementById("othercheck").style.display = "none";
      } else if (bothValue == nameSelect.value) {
        document.getElementById("linktes").required = true;
        document.getElementById("drivercheck").style.display = "none";
        document.getElementById("usercheck").style.display = "none";
        document.getElementById("othercheck").style.display = "block";
      }
    } else {
      document.getElementById("usercheck").style.display = "block";
    }
  }
</script>