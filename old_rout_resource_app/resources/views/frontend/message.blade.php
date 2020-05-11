
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bils/app_messages.css') }}">
<div class="panel panel-default border-none ">
	<div class="panel-heading">
		<i class="clip-bubble-4"></i>
		{{__('app.Message')}}
		<div class="btn-group group_message_btn">
			<button data-toggle="dropdown" class="btn btn-orange btn-sm dropdown-toggle">
				{{__('app.Group')}} : <span id="groupl_name_span">  {{__('app.None')}}  </span> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu" id="groups_ul" style="font-size:12px;">
				<li onclick="group_message(0,'None')" id="0">
					<a href="#">
						{{__('app.None')}}
					</a>
				</li>
				<li class="divider"></li>

			</ul>
		</div>
		<!--
		<div class="panel-tools">
			<a class="btn btn-xs btn-link panel-refresh" href="#" onclick="loadNewMessaeg()">
				<i class="fa fa-refresh"></i>
			</a>
		</div>-->
	</div>
		<div class="panel-body panel-scroll ps-container ps-active-y fixed-panel message_div margin-0 padding-0" >
            <div id="frame" class="hidden"><!--check this out  -->

                <div class="content col-md-12 col-sm-12 col-xs-12 margin-0 padding-0">
                <!--div class="contact-profile">
                    <img id="app_user_image" src="" alt="" />
                    <a onclick="showProfile()" style="cursor:pointer; text-decoration: none;" id="app_user_name"></a>
                    <div class="social-media">
                        <div id="load_more_message">
                        </div>
                    </div>
                </div-->
                <div class="messages padding-0">
                    <ul style="padding-left: 0;" class="message_body">
                    </ul>
                </div>
                <div class="message-input" >
                    <div class="wrap">
                        <form id="sent_message_to_user" name="sent_message_to_user" enctype="multipart/form-data" class="form form-horizontal form-label-left">
                            @csrf
                            <p id="reply_msg"  class="replied_message_p" style="margin-right:0 !important; padding:2px 4px;color:#fff"></p>
                            <input type="hidden" id="edit_msg_id" name="edit_msg_id">
                            <div class="input-group">
								<span class="input-group-btn dropup ">
									<button type="button" class="btn btn-warning dropdown-toggle btn-custom-side-padding " data-toggle="dropdown" style="padding-top:7px; margin-top:-1px">
										<span class="caret"></span>
									</button>
									<div class="dropdown-menu dropdown-enduring dropdown-checkboxes">
										<select name="message_category" id="message_category" style="min-width:150px; font-size:10px">
											<option disabled="" selected="" value="">Category/Topic</option>
										</select>
									</div>
								</span>
                                <input type="hidden" name="app_user_id" id="app_user_id">
								<input type="hidden" name="group_id" id="group_id" value="0">
                                <input type="text" name="admin_message" id="admin_message" placeholder="Write your message..." />
                                <label for="attachment" class="custom-file-upload btn btn-file btn-blue btn-custom-side-padding ">
                                    <i class="fa fa-paperclip attachment" aria-hidden="true"></i>
                                </label>
                                <input multiple id="attachment" name="attachment[]" type="file"/>
                                <input type="hidden" id="reply_msg_id" name="reply_msg_id">
                                <button class="btn btn-success " type="submit" class="submit" id="message_sent_to_user"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>


<script>

$('.content').css('height', $(window).height() - ($('.footer').outerHeight()+$('.navbar-tools').outerHeight()+30));

var url = $('.site_url').val();
var number_of_msg = 20;
var current_page_no = 1;
var loaded = 1;
//var last_appuser_message_id = 0;
var last_admin_message_id = "0";



var msg_image_url = "<?php echo asset('assets/images/message'); ?>";
var app_user_profile_url = "<?php echo asset('assets/images/user/app_user'); ?>";
var profile_image_url = "<?php echo asset('assets/images/user/app_user'); ?>";
var admin_image_url = "<?php echo asset('assets/images/user/admin'); ?>";
var image_url = "<?php echo asset('assets/images'); ?>";

    ajaxPreLoad = () =>{
        //alert("{{ asset('assets/images/loading.gif') }}")
        $('.content').block({
            overlayCSS: {
                backgroundColor: '#fff'
            },
            message: '<img src={{ asset('assets/images/loading.gif') }} /> Loading...',
            css: {
                border: 'none',
                color: '#333',
                background: 'none'
            }
        });
    }
if(localStorage.getItem('is_group_message')){
    $('#group_id').val(localStorage.getItem('is_group_message'))
    //group_id_set =localStorage.getItem('is_group_message')
    //$('#'+group_id_set).trigger('click');
    localStorage.removeItem('is_group_message')

}


    // message_load_type
    // 1: all message dump first time
    // 2: get last message which just entered by admin
    // 3: get load more messages
    // 4: get appusers latest message




    //done
    loadMessages = function loadMessages(message_load_type){
        $("#search_app_user").val("");
        // event.preventDefault();
        //alert(message_load_type)
        $.ajaxSetup({
            headers:{
                'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
            }
        });

        // new appuser loaded
        if(message_load_type == 1){
            current_page_no =1;
        }
        //alert(last_admin_message_id)

        $.ajax({
            url: "{{ url('app/')}}/load-message",
            type:'POST',
            data:{
                limit:number_of_msg,
                page_no:current_page_no,
                message_load_type:message_load_type,
                last_admin_message_id:last_admin_message_id,
                group_id : $('#group_id').val()
            },
            async:true,
            beforeSend: function( xhr ) {
                //  ajaxPreLoad()
                //$("#load-content").fadeOut('slow');
            },
            success: function(response){
                //alert(1)
                var response = JSON.parse(response);
                var message = response['message'];
                var img_id="";
                var mc;
                //Messages


                var message_body = "";
                if(!jQuery.isEmptyObject(message)){


                    $.each(message, function(i,message){
                        html = "";
                        date = new Date(message["msg_date"]+ 'Z');
                        msg_date = date.toLocaleString ()

                        if( (message["app_user_message"]!=null && message["app_user_message"]!="") || ( message["is_attachment_app_user"]!="" && message["is_attachment_app_user"]!=null )  ){
                            if(message["reply_message"]){
                                html+='<li class="sent_msg reply" style="margin-bottom: -15px;padding-right: 30px;"><div class="replied_message_p p_div" ">'+message['reply_message']+'</div></li>  ';
                            }
                            html += '<li class="sent_msg " id="sent_message_id_'+message['id']+'">';

                            if($.trim(message['app_user_image']) == "null" || $.trim(message['app_user_image']) == ""  ) app_user_image = "no-user-image.png";
                            else  									 	app_user_image = message['app_user_image'];
                            html += '<img style="width:25px;height:25px; cursor:pointer" title="'+message['app_user_image']+'" src="'+app_user_profile_url+'/{{ \Auth::guard('appUser')->user()->user_profile_image }}" alt="" />'
							html += '<div class="right p_div">';
                            if (message["app_user_message"]!=null && message["app_user_message"]!="") {
                                //alert('<div class="right p_div">'+message["admin_message"]+'</div>')
                                html += message["app_user_message"]+'<br>';
                            }else{
                                html+="";
                            }
                            if(message["is_attachment_app_user"]==1){
                                html+="<div class='attachment_div'>";
                                attachements = message["app_user_attachment"].split(',');
                                var old_type = "";
                                for(var i=0; i<attachements.length; i++){
                                    var att_type 		= (attachements[i].split("*"));
                                    var attachment_type = att_type[1];
                                    var attachment_name	= att_type[0];
                                    line_break = "";
                                    if(old_type !=  attachment_type){
                                        old_type = attachment_type;
                                    }
                                    if(i!=0 && old_type !=  attachment_type){
                                        line_break = "<br>";
                                    }

                                    if(attachment_type==1){
                                        //Image
                                        html += line_break+'<img  class="zoomImg thumbnail" style="height:80px !important; width:auto !important;  border-radius:0; cursor:pointer" src="'+msg_image_url+'/'+attachment_name+'" alt="">';
                                        //onclick="zoomImg()"
                                    }
                                    else if(attachment_type==2){
                                        //Video
                                        html +='<div class="row pull-right text-right"><video style="float:right;margin-right:10px;" width="280" controls><source src="'+msg_image_url+'/'+attachment_name+'" type="video/mp4"></video></div>';
                                    }
                                    else if(attachment_type==3){
                                        //Audio
                                        html +='<div class="row pull-right text-right"><audio style="float:right;margin-right:10px;" controls><source src="'+msg_image_url+'/'+attachment_name+'" type="audio/mpeg"></audio></div>';
                                    }
                                    else{
                                        //Other Files
                                        html += '<a href="'+msg_image_url+'/'+attachment_name+'" download><div class="right p_div"  style="text-decoration:underline">'+attachment_name+'</div></a>';
                                    }
                                }
                                html+="</div>";
                            }
							html+="</div>";
                            html += '</li>';
                            if (message["category_name"]!=null && message["category_name"]!="") {
                                mc = '<div class="btn btn-xs btn-default disabled" style="font-size:10px !important;border-radius:7px !important;">'+message["category_name"]+'</div>';
                            }
                            else{
                                mc = "";
                            }

                            if (message["app_user_message"]!=null && message["app_user_message"]!="") 	tem_msg = "'"+message['app_user_message'].replace(/<(?!br\s*\/?)[^>]+>/g, '')+"'";
                            else      tem_msg = "";
                            html += '<span class="time_date_sent">'+mc+' '+msg_date+'<a href="javascript:void(0)" onclick="removeMessage('+message["id"]+','+tem_msg+')" class="margin-left-2 text-danger"><i class="clip-remove"></i></a><a href="javascript:void(0)" onclick="editMessage('+message["id"]+','+tem_msg+')" class="margin-left-2"><i class="fa fa-pencil"></i></a></span>';
                        }
                        else if( (message["admin_id"] != null && message["admin_id"] != "" ) && ((message["admin_message"]!=null && message["admin_message"]!="") || ( message["is_attachment"]!=""&& message["is_attachment"]!=null )) ){
                            if(message["reply_app_message"]){
                                html+='<li class="sent_msg reply" style="margin-bottom: -15px;padding-right: 30px;"><div class="replied_message_p_l p_div" >'+message['reply_app_message']+'</div></li>  ';
                            }
                            html += '<li class="receive_msg" id="receive_message_id_'+message['id']+'">';

                            html += '<img style="width:25px;height:25px;"  src="'+image_url+'/logo.jpg" alt="" />';

                            if (message["admin_message"]!=null && message["admin_message"]!="") {
                                html += '<div class="left p_div">'+message["admin_message"]+'</div><br>';
                            }
                            if( (message["admin_message"]!=null && message["admin_message"]!="")&& (message["is_attachment"]==1) ){
                                html+="";
                            }
                            if(message["is_attachment"]==1){
                                html+="<div class='attachment_div' style=' display: inline-block;  padding:10px 15px 10px 0px;  max-width: 80%;  line-height: 130%;'>";
                                attachements = message["admin_atachment"].split(',');
                                for(var i=0; i<attachements.length; i++){
                                    var att_type 		= (attachements[i].split("*"));
                                    var attachment_type = att_type[1];
                                    var attachment_name	= att_type[0];

                                    if(message["attachment_type"]==1){
                                        //Image
                                        html += '<img  class="zoomImg thumbnail" style="height:80px !important; width:auto !important;  border-radius:0; cursor:pointer" src="'+msg_image_url+'/'+attachment_name+'" alt="">';
                                        //onclick="zoomImg()"
                                    }
                                    else if(message["attachment_type"]==2){
                                        //Video
                                        html +='<div class="row text-left"><video style="float:left; margin-left:10px" width="280" controls><source src="'+msg_image_url+'/'+attachment_name+'" type="video/mp4"></video></div>';
                                    }
                                    else if(message["attachment_type"]==3){
                                        //Audio
                                        html +='<div class="row text-left"><audio style="float:left; margin-left:10px" width="280"  controls><source src="'+msg_image_url+'/'+attachment_name+'" type="audio/mpeg"></audio></div>';
                                    }
                                    else{
                                        //Other Files
                                        html += '<a href="'+msg_image_url+'/'+attachment_name+'" download><div class="left p_div" style="text-decoration:underline">'+attachment_name+'</div></a>';
                                    }
                                }
                                html+="</div>";
                            }
                            if (message["category_name"]!=null && message["category_name"]!="") {
                                mc = '<div class="btn btn-xs btn-default disabled" style="font-size:10px !important;border-radius:7px !important;">'+message["category_name"]+'</div>';
                            }
                            else{
                                mc = "";
                            }

                            if (message["admin_message"]!=null && message["admin_message"]!="") 	tem_msg = "'"+message['admin_message'].replace(/<(?!br\s*\/?)[^>]+>/g, '')+"'";
                            else      tem_msg = "";
                            html += '<span class="time_date">'+'<a href="javascript:void(0)" onclick="replyMessage('+message["id"]+','+tem_msg+')" class="margin-right-2 text-success"><i class="fa fa-mail-reply"></i></a>'+msg_date+' '+mc+'</span>';
                            html += '</li>';
                        }
                        message_body = html+message_body;
                    });


                }

                if(message_body != ""){
                    if(message_load_type == 1){ // 1: all message dump
                        //alert('1:change all message')
                        $(".message_body").html(message_body);
                        $(".messages").animate({ scrollTop: 180000/*$(document).height()*/ }, "fast");
                        current_page_no=2;
                    }
                    // 2: get last message which just entered by admin
                    // load appuser last message
                    else if(message_load_type == 2 || message_load_type == 4){
                        //alert('1:add last mesage')
                        var html_tag = $(".message_body");
                        html_tag.append(message_body);
                        $(".messages").animate({ scrollTop: 180000/*$(document).height()*/ }, "fast");

                    }
                    else if(message_load_type == 3){ // 3: get load more messages
                        //alert('1:add more all message')
                        // need to specify the las message <li> and make the slide animation accoring to that li
                        $(".messages").animate({ scrollTop: $(document).height() }, "fast");
                        var html_tag = $(".message_body");
                        html_tag.prepend(message_body);
                        current_page_no++;
                    }
                    //alert($('.receive_msg:last').length)
                    if($('.receive_msg:last').length>0){
                        last_admin_message = $('.receive_msg:last').attr('id').split('_');
                        //alert(last_admin_message[3])
                        last_admin_message_id = last_admin_message[3];
                    }
                }
                else{
                    if(message_load_type == 1){
                        // NO message yet,
                        $(".message_body").html("");
                    }
                }

				if(loaded == 1){
					if($('#frame').hasClass('hidden'))
						$('#frame').removeClass('hidden');
					loaded++;
				}

                // $('.content').unblock();
            }
        });

        $(".zoomImg").click(function(){
            var image_src = $(this).attr('src');
            $("#modalIMG").modal();
            $("#load_zoom_img").attr('src',image_src);
        });


    }

    loadMessages(1); // 1: all message dump

    // load more when scroll reachs to top of the scrolling div
    $(".fixed-panel").scroll(function() {
        alert('top')
        if($(this).scrollTop()  > 100){
            loadMessages(3)
        }
    });

    $('.fixed-panel').on('scroll', function() {
        alert('ok')
        if ($(this).scrollTop() + $(this).innerHeight() >=
            $(this)[0].scrollHeight) {
            loadNotice(2)
        }
    });



    set_appmessage_time_out_fn = function set_appmessage_time_out_fn(){
        setTimeout(function(){
            newAdminMessages();
        }, 15000);
    }

    newAdminMessages = function newAdminMessages(){
        if($('.receive_msg:last').length>0){
            last_admin_message = $('.receive_msg:last').attr('id').split('_');
            last_admin_message_id = last_admin_message[3];
        }
        loadMessages(4);
        set_appmessage_time_out_fn();
    }

    set_appmessage_time_out_fn();


    replyMessage = (id, msg) =>{
        $('#reply_msg_id').val(id)
        $('#reply_msg').html(msg)
    }

    removeMessage = (id, message)=>{
        $.ajax({
            url: "{{ url('app/')}}/delete-message/"+id,
            type: 'GET',
            async: false,
            success: function (response) {
                // need to check whether removed or now
                if($('#sent_message_id_'+id).prev().hasClass('reply')){
                    $('#sent_message_id_'+id).prev().remove();
                }
                $('#sent_message_id_'+id).next('span').remove();
                $('#sent_message_id_'+id).remove();


                $('#admin_message').val("");
            }
        })
    }


    editMessage = (id, message) =>{
        $('#edit_msg_id').val(id)
        $('#admin_message').val(message)
    }

    //done
    $("#message_sent_to_user").click(function(){
        event.preventDefault();
        $.ajaxSetup({
            headers:{
                'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
            }
        });
        newMsgSent();
    });

    //done
    newMsgSent = function newMsgSent(){
        //alert('sent')
        var formData = new FormData($('#sent_message_to_user')[0]);
        if(( $.trim($('#admin_message').val()) != "" || $.trim($('#attachment').val()) != "" )){
            $.ajax({
                url: "{{ url('app/')}}/send-message",
                type:'POST',
                data:formData,
                async:false,
                cache:false,
                contentType:false,
                processData:false,
                success: function(data){
                    // need to confirmation
					alert(data)
                    if($('#edit_msg_id').val() != ""){
							alert(data)
                        if($.trim(data) == 1){
								alert(data)
                            $('#sent_message_id_'+$('#edit_msg_id').val()+'>div').html($.trim($('#admin_message').val()));
                        }
                    }
                    else{
                        loadMessages(2); // 2: last message only
                    }

                    $("#attachment").val('');
                    $('#reply_msg_id').val('')
                    $('#reply_msg').html('')
                    $('#edit_msg_id').val('')
                    $('#admin_message').val("");
                    //$(".messages").animate({ scrollTop:1800000 /*$(document).height()*/ }, "fast");
                    //loadAppUser();
                }
            });
        }
    }

    $.ajax({
        url: "{{ url('app/')}}/message/get-message-category",
        success: function(response){
            var data = JSON.parse(response);
            var option = '<option value="">&nbsp;</option>';
            $.each(data, function(i,data){
                option += "<option value='"+data['id']+"'>"+data['category_name']+"</option>";
            });
            $("#message_category").append(option)
            //$('#message_category_group').html(option)
            $("#message_category_group").select2({
                placeholder: "Categoty/Topic",
                allowClear: true
            });
            $("#message_category").select2({
                placeholder: "Categoty/Topic",
                allowClear: true
            });
        }
    });


//------------------------------- group functions--------------------

    group_message = (id, value) =>{
        //alert(value)
        $('#groupl_name_span').html(value);
        $('#group_id').val(id);

        current_page_no = 1;
        loaded = 1;
        last_admin_message_id = "0";
        loadMessages(1)
    }

    $.ajax({
        url: "{{ url('app/')}}/message/get-message-group",
        success: function(response){
            var data = JSON.parse(response);
            var option = '';
            $.each(data, function(i,data){
                vals = "'"+data.group_name+ "'"
                option += '<li onclick="group_message('+data.id+','+vals+')" id="'+data.id+'"> ' +
                    '<a href="#">'+data.group_name+'</a> ' +
                    '</li> ' +
                    '<li class="divider"></li>\n';
            });
            $("#groups_ul").append(option)
            //$('#message_category_group').html(option)

        }
    });


	/*$('#groups_ul>li').on("click",function(){
	    alert($(this).attr('id'))
		$('#groupl_name_span').html('group name');
		$('#group_id').val($(this).attr('id'));

        var current_page_no = 1;
        var loaded = 1;
//var last_appuser_message_id = 0;
        var last_admin_message_id = "0";
        loadMessages(1)
	});
	*/
	if(loaded == 2){
		$('#groups_ul>li:first').trigger('click');
	}
	//------------------------------end group--------------------------------




    $('#admin_message').on('keydown', function(e) {
        if (e.which == 13) {
            newMsgSent();
            return false;
        }
    });

    $.ajax({
        url: "{{ url('app/')}}/message/get-message-category",
        success: function(response){
            var data = JSON.parse(response);
            var option = '<option value="">&nbsp;</option>';
            $.each(data, function(i,data){
                option += "<option value='"+data['id']+"'>"+data['category_name']+"</option>";
            });
            $("#message_category").append(option)
            $('#message_category_group').html(option)
            $("#message_category_group").select2({
                placeholder: "Categoty/Topic",
                allowClear: true
            });
            $("#message_category").select2({
                placeholder: "Categoty/Topic",
                allowClear: true
            });
        }
    });




</script>



