# THIS IS A COMMAND FILE TO MAKE AN ALIGNED STACK FROM THE ORIGINAL STACK
#
####CreatedVersion####4.10.25
#
# It assumes that the views are in order in the image stack
#  
# The size argument should be ,, for the full area or specify the desired 
# size (e.g.: ,10)
#
# The offset argument should be 0,0 for no offset, 0,300 to take an area
# 300 pixels above the center, etc.
#
$newstack -StandardInput
InputFile	tomo1.mrc.st
OutputFile	tomo1.mrc.ali
TransformFile	tomo1.mrc.xf
TaperAtFill	1,0
AdjustOrigin	
SizeToOutputInXandY	464,480
OffsetsInXandY	0.0,0.0
#DistortionField	.idf
ImagesAreBinned	1.0
BinByFactor	8
#GradientFile	tomo1.mrc.maggrad
$if (-e ./savework) ./savework
