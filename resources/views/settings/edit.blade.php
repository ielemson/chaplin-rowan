
@push('css')
	<style>
		#website_logo_output{
			height: 60px;
		}
		#website_favicon_output{
			height: 60px;
		}
		.tab-content{
			padding-top: 0;
		}
		.select2-container{
			width: 100% !important;
		}
	</style>
@endpush

@extends('layouts.admin')

@section('title')
Website Settings
@endsection

@section('content')
<section class="content">
    <div class="card">
        
        <div class="card-body">
            <div>
                <div>
                    <form method="post" action="{{ route('website-setting.update', 1) }}" enctype="multipart/form-data">
						@csrf()
						<section class="card-body">
				
							<!-- Tab Menu -->
							<ul class="nav nav-tabs" id="myTab" role="tablist">
								<li class="nav-item">
									<a class="nav-link active" id="website-tab" data-toggle="tab" href="#website" role="tab" aria-controls="website" aria-selected="true">Website Setting</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="seo-tab" data-toggle="tab" href="#seo" role="tab" aria-controls="seo" aria-selected="false">SEO Setting</a>
								</li>
								
								<li class="nav-item">
									<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact Setting</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="social-tab" data-toggle="tab" href="#social" role="tab" aria-controls="social" aria-selected="false">Social Media</a>
								</li>
							</ul>
							<!-- /Tab Menu -->
							
							<!-- Tab Content -->
							<div class="tab-content" id="myTabContent">
				
								<!-- Website Setting -->
								<div class="tab-pane fade show active" id="website" role="tabpanel" aria-labelledby="website-tab">
									<div class="card">
										<div class="card-header">
											<h5 class="card-title">
												Website Setting
											</h5>
										</div>
										
										<div class="card-body">
																					
											<div class="form-group">
												<label for="website_title" class="required">{{__('Website Title')}}:</label>
												<input type="text" name="website_title" id="website_title" class="form-control @error('website_title') form-control-error @enderror" required="required" value="{{$setting->website_title}}">
				
												@error('website_title')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>

											{{-- <div class="form-group">
												<label for="website_title" class="required">{{__('Training Title')}}:</label>
												<input type="text" name="training_title" id="training_title" class="form-control @error('training_title') form-control-error @enderror" required="required" value="{{$setting->training_title}}">
				
												@error('website_title')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div> --}}
{{-- 				
											<div class="form-group">
												<label for="training_cost" class="required">{{__('Training Cost')}}:</label>
												<input type="number" name="training_cost" id="training_cost" class="form-control @error('training_cost') form-control-error @enderror" required="required" value="{{$setting->training_cost}}">
				
												@error('training_cost')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
											<div class="form-group">
												<label for="telegram_group" class="required">{{__('Telegram Group')}}:</label>
												<input type="text" name="telegram_group" id="telegram_group" class="form-control @error('telegram_group') form-control-error @enderror" required="required" value="{{$setting->telegram_group}}">
				
												@error('telegram_group')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
				 --}}
											<div class="row">
												<div class="col-md-4">
													<div class="card">
														<div class="card-body text-center">
															<div class="form-group">
																<label for="website_title" class="required">{{__('Website Logo Dark')}}:</label>
																<div class="">
																	@if(!empty($setting->website_logo_dark))
																		<img src="{{ asset("images/settings/$setting->website_logo_dark") }}" alt="..." id="website_logo_dark_output" class="img-thumbnail rounded mb-3"  >
																	@else
																		<img src="" alt="..." id="website_logo_dark_output" class="img-thumbnail rounded mb-3" >
																	@endif
				
																	<input type="file" class="form-control" name="website_logo_dark">
																	
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4">
													<div class="card">
														<div class="card-body text-center">
															<div class="form-group">
																<label for="website_title" class="required">{{__('Website Logo Light')}}:</label>
																<div class="">
																	@if(!empty($setting->website_logo_light))
																		<img src="{{ asset("images/settings/$setting->website_logo_light") }}" alt="..." id="website_logo_dark_output" class="img-thumbnail rounded mb-3"  >
																	@else
																		<img src="" alt="..." id="website_logo_dark_output" class="img-thumbnail rounded mb-3" >
																	@endif
				
																	<input type="file" class="form-control" name="website_logo_light">
																	
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-4">
													<div class="card">
														<div class="card-body text-center">
															<div class="form-group">
																<label for="website_title" class="required">{{__('Website Logo Light')}}:</label>
																<div class="">
																	@if(!empty($setting->website_favicon))
																		<img src="{{ asset("images/settings/$setting->website_favicon") }}" alt="..." id="website_logo_dark_output" class="img-thumbnail rounded mb-3"  >
																	@else
																		<img src="" alt="..." id="website_logo_dark_output" class="img-thumbnail rounded mb-3" >
																	@endif
				
																	<input type="file" class="form-control" name="website_favicon">
																	
																</div>
															</div>
														</div>
													</div>
												</div>
													
				
											</div> <!-- row-end -->
				
										</div> <!-- card-body-end -->
									</div>
								</div>
								<!-- /Website Setting -->
				
								<!-- SEO Setting -->
								<div class="tab-pane fade" id="seo" role="tabpanel" aria-labelledby="seo-tab">
									<div class="card">
										<div class="card-header">
											<h5 class="card-title">
												SEO Setting
											</h5>
										</div>
										
										<div class="card-body">
													
											<div class="form-group">
												<label for="meta_title">{{__('Meta Title')}}:</label>
												<input type="text" name="meta_title" id="meta_title" class="form-control @error('meta_title') form-control-error @enderror" value="{{$setting->meta_title}}">
				
												@error('meta_title')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
													
											<div class="form-group">
												<label for="meta_description">{{__('Meta Description')}}:</label>
												<textarea name="meta_description" id="meta_description" class="form-control @error('meta_description') form-control-error @enderror">{{$setting->meta_description}}</textarea> 
				
												@error('meta_description')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
															
											<div class="form-group">
												<label for="meta_tag">{{__('Meta Keywords')}}:</label>
												<input type="text" name="meta_tag" id="meta_tag" class="form-control @error('meta_tag') form-control-error @enderror" value="{{$setting->meta_tag}}">
				
												@error('meta_tag')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
				
										</div>
									</div>
								</div>
								<!-- /SEO Setting -->
				
				
								<!-- Contact Setting -->
								<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
									<div class="card">
										<div class="card-header">
											<h5 class="card-title">
												Contact Setting
											</h5>
										</div>
										
										<div class="card-body">
														
											<div class="form-group">
												<label for="address">{{__('Contact Address')}}:</label>
												<textarea name="address" id="address" class="form-control @error('address') form-control-error @enderror">{{$setting->address}}</textarea>
				
												@error('address')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>

											<div class="form-group">
												<label for="address">{{__('About Us')}}:</label>
												<textarea name="about" id="about" class="form-control @error('about') form-control-error @enderror" rows="5">{{$setting->about}}</textarea>
				
												@error('about')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
											<div class="form-group">
												<label for="address">{{__('Who We Are')}}:</label>
												<textarea name="who_we_are" id="who_we_are" class="form-control @error('who_we_are') form-control-error @enderror" rows="5">{{$setting->who_we_are}}</textarea>
				
												@error('who_we_are')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
											<div class="form-group">
												<label for="address">{{__('Our Vision')}}:</label>
												<textarea name="our_vision" id="our_vision" class="form-control @error('our_vision') form-control-error @enderror" rows="5">{{$setting->our_vision}}</textarea>
				
												@error('who_we_are')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>

												
							
													
											<div class="form-group">
												<label for="phone">{{__('Contact Phone')}}:</label>
												<input type="text" name="phone" id="phone" class="form-control @error('phone') form-control-error @enderror" value="{{$setting->phone}}">
				
												@error('phone')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
											<div class="form-group">
												<label for="hotline">{{__('Hot line')}}:</label>
												<input type="text" name="hotline" id="hotline" class="form-control @error('hotline') form-control-error @enderror" value="{{$setting->hotline}}">
				
												@error('hotline')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
													
											<div class="form-group">
												<label for="email">{{__('Contact Email')}}:</label>
												<input type="text" name="email" id="email" class="form-control @error('email') form-control-error @enderror" value="{{$setting->email}}">
				
												@error('email')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
				
										</div>
									</div>
								</div>
								<!-- Contact Setting -->
				
								<!-- Social Media Setting -->
								<div class="tab-pane fade" id="social" role="tabpanel" aria-labelledby="social-tab">
									<div class="card">
										<div class="card-header">
											<h5 class="card-title">
												Social Media
											</h5>
										</div>
										
										<div class="card-body">
													
											<div class="form-group">
												<label for="facebook">{{__('Facebook')}}:</label>
												<input type="text" name="facebook" id="facebook" class="form-control @error('facebook') form-control-error @enderror" value="{{$setting->facebook}}">
				
												@error('facebook')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
													
											<div class="form-group">
												<label for="twitter">{{__('Twitter')}}:</label>
												<input type="text" name="twitter" id="twitter" class="form-control @error('twitter') form-control-error @enderror" value="{{$setting->twitter}}">
				
												@error('twitter')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
													
											<div class="form-group">
												<label for="linkedin">{{__('Linkedin')}}:</label>
												<input type="text" name="linkedin" id="linkedin" class="form-control @error('linkedin') form-control-error @enderror" value="{{$setting->linkedin}}">
				
												@error('linkedin')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
													
											<div class="form-group">
												<label for="instagram">{{__('Instagram')}}:</label>
												<input type="text" name="instagram" id="instagram" class="form-control @error('instagram') form-control-error @enderror" value="{{$setting->instagram}}">
				
												@error('instagram')
													<span class="text-danger">{{ $message }}</span>
												@enderror
											</div>
				
											
				
										</div>
									</div>
								</div>
								<!-- Social Media Setting -->
					<!-- Page Header -->
					<div class="page-header mx-auto">
						<div class="card breadcrumb-card">
							<div>
								
								<div class="col-md-6 p-2 mx-auto">
									<div class="create-btn pull-right">
										<button type="submit" class="btn btn-primary btn-block">{{ __('Update Settings') }}</button>
									</div>
								</div>
							</div>
						</div><!-- /card finish -->	
					</div><!-- /Page Header -->
							</div><!-- /Tab Content -->
													
						</section> <!-- /section -->
				
					</form>
                </div>

            </div>
        </div>
    </div>
</section>
@endsection
