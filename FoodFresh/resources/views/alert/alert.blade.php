@if (session('danger'))
  <div id="alert" class="alert alert-danger alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h6><i class="icon fa fa-ban"></i> {{session('danger')}} </h6>
    
  </div>
@endif

@if (session('info'))
  <div id="alert" class="alert alert-info alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h6><i class="icon fa fa-info"></i> {{session('info')}} </h6>
    
  </div>
@endif

@if (session('warning'))
  <div id="alert" class="alert alert-warning alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h6><i class="icon fa fa-warning"></i> {{session('warning')}} </h6>
    
  </div>
@endif

@if (session('success'))
  <div id="alert" class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h6><i class="icon fa fa-check"></i> {{session('success')}} </h6>
    
  </div>
@endif

<script type="text/javascript">
  setTimeout("alertDismiss()", 5000);
  function alertDismiss(){
    document.getElementById('alert').style.display="none";
  }
</script>
