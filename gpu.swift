type messagefile; 
type countfile; 

app (countfile t) countwords (int nk, int time) {   
     cka "-nkernels="nk "-kernel_time="time stdout=@filename(t);
}

int nKernels = @toint(@arg("nkernels","1"));
int sleepTime = @toint(@arg("kernel_time","1"));

string inputNames = "scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh scott3a.sh";

messagefile inputfiles[] <fixed_array_mapper;files=inputNames>;

foreach f,i in inputfiles {
  countfile c <single_file_mapper; file=@strcat(i, ".result")>;
  c = countwords(nKernels, sleepTime);
}