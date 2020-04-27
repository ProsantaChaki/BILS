@extends('frontend.auth.layout.login-master')
@section('login-content')

	<div class="box-login">
        <h5>{{__('auth.sign-up')}}<h5>
        <p>
            {{__('auth.signin_details')}}
        </p>
        <form class="form-login" action="{{ url('app/auth/post/login') }}" method="post">
            <input type="hidden" name="_token" value="{{csrf_token()}}">
            @if($errors->count() > 0 )
                <div class="alert alert-danger btn-squared">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <h6>The following errors have occurred:</h6>
                    <ul>
                        @foreach( $errors->all() as $message )
                            <li>{{ $message }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            @if(Session::has('message'))
                <div class="alert alert-success btn-squared" role="alert">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    {{ Session::get('message') }}
                </div>
            @endif
            @if(Session::has('errormessage'))
                <div class="alert alert-danger btn-squared" role="alert">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    {{ Session::get('errormessage') }}
                </div>
            @endif
            <div class="errorHandler alert alert-danger no-display btn-squared">
                <i class="fa fa-remove-sign"></i> You have some form errors. Please check below.
            </div>
            <fieldset>
                <div class="form-group">
                    <span class="input-icon">
                        <input type="email" class="form-control" name="email" placeholder="Email">
                        <i class="fa fa-user"></i> </span>
                </div>
                <div class="form-group form-actions">
                    <span class="input-icon">
                        <input type="password" class="form-control password" name="password" placeholder="Password">
                        <i class="fa fa-lock"></i>
                        <a class="forgot" href="{{url('app/auth/forget/password')}}">I forgot my password</a>
                    </span>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-success pull-right btn-squared">
                        Login <i class="fa fa-arrow-circle-right"></i>
                    </button>
                </div>
				<div class="new-account">
					Don't have an account yet?
					<a href="{{url('app/register')}}" class="register">
						Create an account
					</a>
				</div>
            </fieldset>
        </form>
    </div>
@endsection