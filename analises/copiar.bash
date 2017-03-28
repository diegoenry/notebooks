analises="
rmsf_bb.dat rmsd_bb.dat bfactor.dat 
dssp.dat dssp_total.dat project.dat
hbonds.dat hbonds_avg.dat 
nc.all.res.dat native.resmap.gnu nonnative.resmap.gnu 
Loop-NDP.pdb surf.dat molsurf.dat"

root=../
for i in 3AXX 3AMD ; do
  for j in 310 353 ; do 
    for analise in ${analises} ; do
      cp ${root}/${i}/${j}/${analise} ${i}_${j}_${analise}
    done
  done
done

