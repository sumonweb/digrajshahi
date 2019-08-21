<div class="menu_ber" style="position:sticky; top:0; z-index:9">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
 
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">


                {{--<a class="active" href="{{ route('home') }}"><i class="fa fa-home" style="font-size:22px; color:#fff;"></i> Home </a>--}}
                <li class="nav-item"><a class="nav-link sir_col" href="{{ route('home') }}" >  Home</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle nao_col" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        About Range
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="{{ route('mission') }}">Mission & Vision</a>
                        <a class="dropdown-item" href="{{ route('about') }}">Rajshahi Range at a Glance</a>
                        <a class="dropdown-item" href="{{ route('citizen-charter') }}">Citizen Charter</a>
                        <a class="dropdown-item" href="{{ route('history') }}">History</a>
                        <a class="dropdown-item" href="{{ route('jurisdictionMap') }}">Jurisdiction Map</a>
                        <a class="dropdown-item" href="{{ route('organogram') }}">Organogram</a>
                        <a class="dropdown-item" href="{{ route('staff') }}">List of Officers</a>
                        <a class="dropdown-item" href="{{ route('sacrifices') }}"> Sacrifice in 1971</a>
                        <a class="dropdown-item" href="{{ route('dig-list') }}">List of DIG's</a>
                    </div>
                </li>



                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle raj-col" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Notice
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="{{ route('notice') }}">Notice </a>
                        <a class="dropdown-item" href="{{ route('tender') }}">Tender Notice</a>
                        <a class="dropdown-item" href="{{ route('office-order') }}">Office Order</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle raj-col" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Gallery
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="{{ route('photo-gallery') }}">Photo Gallery </a>
                        <a class="dropdown-item" href="{{ route('photo-gallery') }}">Video Gallery</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle pab_col" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Miscellaneous
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        {{--<a class="dropdown-item" href="{{ route('crime-statistics') }}">Crime Statistics</a>--}}
                        <a class="dropdown-item" href="{{ route('noc') }}">NOC</a>
                        <a class="dropdown-item" href="{{ route('download') }}"> Download corner</a>
                        <a class="dropdown-item" href="{{ route('useful-links') }}"> Important Links</a>
                        <a class="dropdown-item" href="{{ route('wanted') }}"> Most wanted</a>
                    </div>
                </li>
                <li class="nav-item"><a class="nav-link sir_col" href="{{ url('/news') }}" >News</a></li>
            </ul>
        </div>
    </nav>
</div>