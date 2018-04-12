{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Next](.md)/[Previous](.md)

# Molecular Dynamics

To further explore chemical bonding and reactivity on the quantum level, Matlab can be used to model reactions. One simple reaction that we observed was a substitution reaction as follows:

$$A + BC \rightarrow AB + C$$

## Surfaces

This reaction was observed using three different surfaces that represent different conditions. The first was an early barrier:

![early barrier](/early_barrier.png)

The early barrier models an exothermic reaction because the energy of the reactants is higher than the energy of the products. However, the reaction is not guarateed to occur because a certain amount of energy is needed to get over the "saddle point". For the earlier barrier, the saddle point is shifted to the right, as seen in the left graph. The right graph shows how the slices of the surface are the same as the potential well of binding for the products. A similar potential well can be shown for the reactants if you rotate the potential well.

Below is the late barrier:

![late barrier](/late_barrier.png)

The late barrier models an endothermic reaction because the energy of the reactants is lower than the energy of the products. Again however, the reaction can occur if enough kinetic energy is applied to the system to get it over the saddle point. The left graph shows that the saddle point is shifted to the left. Again the right graph shows a slice of the surface to show the potential energy well for the products.

The third surface was the Lennard-Jones or 12-6 potential. It is expressed by the following equation:

$V_{LJ} = 4 \epsilon ((\frac {\sigma}{r})^{12}-(\frac {\sigma}{r})^6)$,

where $\epsilon$ is the well depth, $\sigma$ is the finite distance where inner particle potential is zero, and $r$ is the distance between particles. 

This well represents the reaction of non-reactive species, such as nobel gases. The potential takes into account the attractive and repulsive forces of the particles. Below shows the LJ potential:

![LJ](/LJ.png)

## Exploration with Early Barrier Surface

This first animation shows the reaction not occuring. The top left images shows the atoms A, B, and C. And the bottom left image shows the particles moving in space on the surface. There is not enough energy for B to make it over the saddle point in order to bond with C. Then the three images on the left show the position, momentum, and energy of the particles. 

![doesn't make it](/early_surface_makes_it.gif)

Next, this animation shows the reaction almost occurring. The AB molecule almost separates, and the reaction bounces around the saddle point for a little while. If you look at the top left picture when the reaction is at the saddle point, you can see that atoms A and C appear to be vibrating with atom C at the same frequency. But ultimately, there is not enough energy to get over the saddle point so the reaction does not occur. This can also be observed in the middle graph on the right after the reaction is done.

![almost](/early_surface_almost_makes_it.gif)

Finally, this animation shows the reaction occuring. The AB molecule separates, and the BC molecule forms while A moves away. This means that there was enough energy to get over the saddle point and the overall energy of the BC molecule is lower than the AB molecule.

![makes it](/early_surface_makes_it1.gif)

## Exploration with Late Barrier Surface

This animation shows the reaction not occurring. There is not enough energy to get over the saddle point.

![doesn't make it](/late_surface_doesnt_make_it.gif)

Next, this animation shows the reaction occurring. The starting position is the same as the one above but there is more horizontal kinetic energy, so it is able to make it over the saddle point. Look at the difference in the vibration of the BC molecule and the AB molecule. The reactant BC has a larger amplitude vibration than the AB molecule. This is because the product has higher potential energy than the reactants, and therefore, has lower kinetic energy. This results in smaller vibration.

![makes it](/late_surface_makes_it.gif)

## Exploration with Lennard-Jones Potential

