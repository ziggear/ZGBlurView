ZGBlurView
==========
courtesy of WWDC code examples (ios_uiimageeffects.zip)

Usage
-----

* add files to project
* add "Accelerate" framework to "Build Phases"
* create ZGBlurView in your code


Example
-------

	
	ZGBlurView *subBlurView = [[ZGBlurView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:subBlurView];
    
    //should call "blur" after added to super view
    [subBlurView blur];