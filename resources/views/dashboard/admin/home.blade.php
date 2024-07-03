@extends('dashboard.master')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Home</h1>
  </div>
  <div class="row">

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow-sm h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Data Karyawan</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">{{$employe}} Persons</div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Annual) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow-sm h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Penilaian</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">{{$assessment_success}} person</div>
            </div>
            <div class="col-auto">
              <i class="fas fa-check fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

<!-- Earnings (Annual) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
  <div class="card border-left-danger shadow-sm h-100 py-2">
    <div class="card-body">
      <div class="row no-gutters align-items-center">
        <div class="col mr-2">
          <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">Penilaian Tertunda</div>
          <div class="h5 mb-0 font-weight-bold text-gray-800">{{$assessment_pending}} person</div>
        </div>
        <div class="col-auto">
          <i class="fas fa-times fa-2x text-gray-300"></i>
        </div>
      </div>
    </div>
  </div>
</div>

    <!-- Tasks Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-info shadow-sm h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Kriteria</div>
              <div class="row no-gutters align-items-center">
                <div class="col-auto">
                  <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">{{$criteria}}</div>
                </div>
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
    <div class="row justify-content-center">
        <div class="col-lg-12">
            <div class="card shadow-sm">
                <div class="card-header">Tentang Kami</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    PT. Jaya Abadi adalah perusahaan yang berdedikasi untuk menyediakan produk dan layanan terbaik kepada pelanggan kami. Dengan lebih dari 20 tahun pengalaman di industri, kami selalu mengutamakan kualitas, inovasi, dan kepuasan pelanggan. Keberhasilan kami tidak lepas dari peran serta dan kontribusi setiap karyawan, yang merupakan aset terbesar perusahaan.

Sebagai perusahaan yang selalu berusaha untuk meningkatkan kualitas sumber daya manusia, PT. Jaya Abadi berkomitmen untuk menciptakan lingkungan kerja yang mendorong setiap karyawan untuk mencapai potensi terbaik mereka. Salah satu inisiatif kami adalah memperkenalkan Sistem Pendukung Keputusan (SPK) untuk Pemilihan Karyawan Terbaik menggunakan metode Simple Additive Weighting (SAW). Sistem ini bertujuan untuk memberikan penilaian yang objektif, transparan, dan adil, serta untuk mengapresiasi karyawan yang berprestasi.
                </div>
            </div>
        </div>
    </div>
@endsection
