document.write(`

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="description"
      content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc."
    />

    <!-- theme meta -->
    <meta name="theme-name" content="sleek" />

    <title>Nic Validator</title>

    <!-- GOOGLE FONTS -->
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500"
      rel="stylesheet"
    />

    <link
      href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css"
      rel="stylesheet"
    />

    <!-- PLUGINS CSS STYLE -->
    <link href="assets/plugins/simplebar/simplebar.css" rel="stylesheet" />
    <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />

    <!-- No Extra plugin used -->
    <link
      href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css"
      rel="stylesheet"
    />
    <link
      href="assets/plugins/daterangepicker/daterangepicker.css"
      rel="stylesheet"
    />

    <link href="assets/plugins/toastr/toastr.min.css" rel="stylesheet" />

    <!-- SLEEK CSS -->
    <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

    <!-- FAVICON -->
    <link href="assets/img/favicon.png" rel="shortcut icon" />


    <script src="assets/plugins/nprogress/nprogress.js"></script>
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/plugins/simplebar/simplebar.min.js"></script>
    <script src="assets/js/sleek.js"></script>
    <link href="assets/options/optionswitch.css" rel="stylesheet" />
    <script src="assets/options/optionswitcher.js"></script>
  </head>

  <body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">
    <script>
      NProgress.configure({ showSpinner: false });
      NProgress.start();
    </script>


    <div class="wrapper">

      <aside class="left-sidebar bg-sidebar">
        <div id="sidebar" class="sidebar sidebar-with-footer">
          <!-- Aplication Brand -->
          <div class="app-brand">
            <a href="Index.jsp" title="NIC Validator">
                  <path
                    class="logo-fill-white"
                    fill="#FFF"
                    d="M11 4v25l8 4V0z"
                  />
                </g>
              </svg>

              <span class="brand-name text-truncate">NIC Validator</span>
            </a>
          </div>

          <!-- begin sidebar scrollbar -->
          <div class="" data-simplebar style="height: 100%">
            <!-- sidebar menu -->
            <ul class="nav sidebar-inner" id="sidebar-menu">

              <li class="has-sub">
                <a
                  href="Index.jsp"
                >
                  <i class="mdi mdi-account-multiple-plus"></i>
                  <span class="nav-text">Add Users</span> 
                </a>
              </li>
              
               <li class="has-sub">
                <a
                  href="View.jsp"
                >
                  <i class="mdi mdi-account-group-outline"></i>
                  <span class="nav-text">View Users</span> 
                </a>
              </li>
              
               <li class="has-sub">
                <a
                  href="Update-Delete.jsp"
                >
                  <i class="mdi mdi-account-edit"></i>
                  <span class="nav-text">Manage Users</span> 
                </a>
              </li>

            </ul>
          </div>
        </div>
      </aside>

      <div class="page-wrapper">
        <header class="main-header" id="header">
          <nav class="navbar navbar-static-top navbar-expand-lg">
            <button id="sidebar-toggler" class="sidebar-toggle">
              <span class="sr-only">Toggle navigation</span>
            </button>
          </nav>
        </header>

`);