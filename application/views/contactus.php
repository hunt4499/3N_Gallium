<!-- partial -->
<!-- $subject, $emailuser, $content, $host,$port,$username,$password,$from,$appname,$secure -->
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
          <?php if ($this->session->flashdata('demo')) : ?>
            <div class="alert alert-danger" role="alert">
              <?php echo $this->session->flashdata('demo'); ?>
            </div>
          <?php endif; ?>
          <h4 class="card-title">Send Email</h4>
          <?= form_open_multipart('contactus/sendmail'); ?>

          <div id="othercheck"  class="form-group">
            <label for="">First Name</label>
            <input type="email" class="form-control" id="linktes" placeholder="Enter First Name" name="firstname">
          </div>
          <div id="othercheck"  class="form-group">
            <label for="">Last Name</label>
            <input type="email" class="form-control" id="linktes" placeholder="Enter email Address" name="lastname">
          </div>
          <div id="othercheck"  class="form-group">
            <label for="">Email</label>
            <input type="email" class="form-control" id="linktes" placeholder="Enter email Address" name="emailothers">
          </div>

          <div class="form-group">
            <label for="">Subject</label>
            <input type="text" class="form-control" id="newstitle" placeholder="Enter subject" name="subject" required>
          </div>
          <div class="form-group">
            <label for="">Company name</label>
            <input type="text" class="form-control" id="Company_name" placeholder="Company name" name="companyname" required>
          </div>
          <div class="form-group">
            <label for="">Phone Number</label>
            <input type="text" class="form-control" id="Company_name" placeholder="Company name" name="companyname" required>
          </div>
        

          <div class="form-group">
            <label for="newscontent">Email Content</label>
            <textarea type="text" class="form-control summernoteExample2 " id="" placeholder="Location" name="content" required></textarea>
          </div>
          <button type="submit" class="btn btn-success">Send<i class="mdi mdi-send ml-1"></i></button>

          <?= form_close(); ?>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end of content wrapper -->

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