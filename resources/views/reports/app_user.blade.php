@extends('layout.master')
@section('style')
    
@endsection
@section('content')
    <!--MESSAGE-->
    <div class="row ">
        <div class="col-md-10 col-md-offset-1" id="master_message_div">
        </div>
    </div>
    <!--END MESSAGE-->

    <!--PAGE CONTENT -->
    <div class="row ">
        <div class="col-sm-12">
            <div class="tabbable">
                <ul class="nav nav-tabs tab-padding tab-space-3 tab-blue" id="myTab4">
                    <li class="active">
                        <a id="survey_list_button" data-toggle="tab" href="#survey_list_div">
                            <b> App User Report</b>
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <!-- PANEL FOR OVERVIEW-->
                    <div id="survey_list_div" class="tab-pane in active">
                        <div class="row no-margin-row">
                            <!-- List of Categories -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-external-link-square"></i>

                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#">
                                        </a>
                                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                                            <i class="fa fa-wrench"></i>
                                        </a>
                                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a class="btn btn-xs btn-link panel-expand" href="#">
                                            <i class="fa fa-resize-full"></i>
                                        </a>
                                        <a class="btn btn-xs btn-link panel-close" href="#">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        <form id="survey_details" name="survey_details" enctype="multipart/form-data" class="form form-horizontal form-label-left" >
                                            <div class="col-md-10">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">App User Name or (Phone, Email)<span class="required">*</span></label>
                                                <div class="col-md-8 col-sm-8 col-xs-8">
                                                    <input type="text" id="app_user_name_search" name="app_user_name_search"  class="form-control col-lg-12"/>
                                                    <input type="hidden" id="app_user_id_id" name="app_user_id_id" value="">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <button type="button" class=" btn btn-primary " id="app_user_search">Search</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                            <!-- END Categoreis -->
                        </div>
                    </div>
                    <!--END PANEL FOR OVERVIEW -->

                </div>

            </div>
        </div>
    </div>
    </div>
    <!--END PAGE CONTENT-->

@endsection


@section('JScript')

    <script src="{{ asset('assets/js/bils/reports/app_user.js')}}"></script>
    
@endsection


