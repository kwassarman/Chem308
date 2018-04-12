{% include mathjax.html %}

(For table of contents, visit [homepage](/README.md))

[Next](.md)/[Previous](.md)

# Molecular Dynamics

To further explore chemical bonding and reactivity on the quantum level, Matlab can be used to model reactions. One simple reaction that we observed was a substitution reaction as follows:

$$AB + C \rightarrow AC + B$$

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

