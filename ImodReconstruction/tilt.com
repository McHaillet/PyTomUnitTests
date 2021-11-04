# Command file to run Tilt
#
####CreatedVersion####4.10.25
# 
# RADIAL specifies the frequency at which the Gaussian low pass filter begins
#   followed by the standard deviation of the Gaussian roll-off
#
# LOG takes the logarithm of tilt data after adding the given value
#
$tilt -StandardInput
InputProjections tomo1.mrc.ali
OutputFile tomo1.mrc_full.rec
IMAGEBINNED 1
TILTFILE tomo1.mrc.tlt
XTILTFILE tomo1.mrc.xtilt
THICKNESS 464
RADIAL 0.35 0.035
FalloffIsTrueSigma 1
XAXISTILT 0.0
LOG 0.0
SCALE 0.0 330.0
PERPENDICULAR 
MODE 2
FULLIMAGE 464 480
SUBSETSTART 0 0
AdjustOrigin 
ActionIfGPUFails 1,2
OFFSET 0.0
SHIFT 0.0 0.0
$if (-e ./savework) ./savework
