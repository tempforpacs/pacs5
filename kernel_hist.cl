__kernel void flip_img(
	__global unsigned char *red,
  	__global unsigned char *green,
  	__global unsigned char *blue,
	__global unsigned char *hist_red,
	__global unsigned char *hist_blue,
	__global unsigned char *hist_green,
	unsigned int width,
	unsigned int height){

	//initialize to 0
	for (unsigned int = 0; i < 256; i++){
		hist_red[i] = 0;
		hist_blue[i] = 0;
		hist_green[i] = 0;
	}
	for (unsigned int i = 0; i < height; i++){
		for (unsigned int j = 0; j < width; j++){
			unsigned char red_val = red[i*width+j];
			unsigned char green_val = green[i*width+j];
			unsigned char blue_val = blue[i*width+j];

			hist_red[red_val]++;
			hist_green[green_val]++;
			hist_blue[blue_val]++;
		}
	}
	
}
