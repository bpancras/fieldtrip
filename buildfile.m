function plan = buildfile
plan = buildplan;
files = ["det2x2.c", "det3x3.c", "ft_getopt.c", "ft_spike_sub_crossx.c", "getpid.c", "inv2x2.c", "inv3x3.c",...
  "meg_leadfield1.c", "mtimes2x2.c", "nanmean.c",...
   "nanstd.c", "nansum.c", "nanvar.c", "plgndr.c", "read_16bit.c", "read_24bit.c", "read_ctf_shm.c", "rename.c",...
  "sandwich2x2.c", "sandwich3x3.c", "write_ctf_shm.c"];
srcFiles = matlab.buildtool.io.Glob("src/det3x3.c");
outputDir= fullfile("connectivity", "private");
for f = files
plan("mex:"+f) = matlab.buildtool.tasks.MexTask(fullfile("src",f), outputDir);
end
plan("clean") = matlab.buildtool.tasks.CleanTask();
