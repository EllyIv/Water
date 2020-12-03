###############
# Lammps      #
# Water,TIP3P #
###############


I Step / packmol

  #Make xyz file for one molecule (or goole)
  water.xyz

  #Make input file for packmol
  inp360.packmol

  #Run packmol 
  packmol < inp360.packmol 

 
II Step / moltemplate
  
   #Make input file for moltemplate 
   pack360.lt (and tip3p.lt)

   #Run moltemplate 
   moltemplate.sh  pack360.lt  -xyz pack360.xyz 


III Step / lammps 
 
   #Make input file for lammps
   NPT-tip3p.in

   #Make submit file for lochness
   submit.sh

   #Run simulation
   sbatch  submit.sh 

   #Check simulation  
   
  
