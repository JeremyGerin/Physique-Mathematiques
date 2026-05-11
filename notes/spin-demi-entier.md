# Représentations physiquement pertinente du groupe de Lorentz

Pourquoi les représentations physiquement pertinentes du groupe de Lorentz sont-elles les représentations de son revêtement universel $SL(2, \mathbb{C})$ ?

## Rappels de mécanique quantique 

En mécanique quantique on représente l'état d'une particule par un vecteur d'un espace de Hilbert $\mathcal{H}$ de sorte que la probabilité de mesurer l'état $\phi$ sachant qu'on est dans l'état $\psi$ est donné par 

$$\frac{\lvert\langle \psi,  \phi \rangle \rvert^2}{\lVert \psi \rVert^2 \lVert \phi \rVert^2}$$

Ainsi on remarque qu'un état $\psi$ ou un état $\lambda\psi$ pour $\lambda \in \mathbb{C}^*$ donne les mêmes probabilités. Par conséquent, ce qui est intéressant physiquement n'est pas le vecteur $\psi$ de $\mathcal{H}$ mais la droite $\mathbb{C}\psi$ dans $\mathcal{H}$. 

Notons $\mathcal{P}(\mathcal{H})$ l'espace dit **projectif** des droites de $\mathcal{H}$. C'est l'espace quotient 
$$\mathcal{P}(\mathcal{H}) = \mathcal{H}/_\sim$$
où $\sim$ est la relation d'équivalence ou $\psi_1$ et $\psi_2$ sont en relation s'il existe $\lambda \in \mathbb{C}^*$ tel que $\psi_1 = \lambda \psi_2$.

Ainsi un **état quantique** est une droite de $\mathcal{H}$ c'est à dire un élément de $\mathcal{P}(\mathcal{H})$. Et la probabilité de mesurer l'état $\Phi$ sachant quon est dans l'état $\Psi$ est donné par

$$\langle\langle \Psi, \Phi\rangle\rangle = \frac{\lvert\langle \psi,  \phi \rangle \rvert^2}{\lVert \psi \rVert^2 \lVert \phi \rVert^2}$$
où $\psi$ et $\phi$ sont des représentant respectifs de $\Psi$ et $\Phi$.

## Représentations unitaires et projectives 

Maintenant on aimerai savoir comment ces états quantiques se comportent sous l'actions de certains groupes de symmétrie (comme le groupe de Lorentz). Pour cela, on considère une représentation (i.e. une action linéaire) $\rho: G \to GL(\mathcal{H})$ et comme cette action doit respecter les probabilité (contrainte Physique qu'on s'est donné) il est suffisant de considèrer une représentation dite **unitaire** (i.e. qui préserve le produit scalaire) $\rho : G \to U(\mathcal{H})$.

Remarquons que $U(\mathcal{H})$ agit canoniquement sur $\mathcal{P}(\mathcal{H})$ et qu'un élément qui fixe toute les droite est une homotétie unitaire c'est à dire un élément de $U(1)$. On définit alors le **groupe unitaire projectif** de $\mathcal{H}$ comme 
$$\mathcal{P}U(\mathcal{H}) = U(\mathcal{H})/U(1)$$
Ainsi toute représentation unitaire $\rho : G \to U(\mathcal{H})$ induit une action sur $\mathcal{P}(\mathcal{H})$ via le morphisme $G \to \mathcal{P}U(\mathcal{H})$.

Ainsi, ce qui est pertinent physiquement ce sont les actions de $G$ sur $\mathcal{P}(\mathcal{H})$ qui préservent les probabilités.

## Théorème de Wigner

Dans un premier temps on va montrer que de telles actions sont nécéssairement des morphismes $G \to \mathcal{P}U(\mathcal{H})$.

**Théorème :** Soit $\mathcal{H}$ et $\mathcal{K}$ deux espaces de Hilbert et soit $T : \mathcal{P}(\mathcal{H}) \to \mathcal{P}(\mathcal{K})$ une bijection qui préserve les probabilités. Alors il existe un opérateur unitaire ou anti-unitaire $V: \mathcal{H} \to \mathcal{K}$ telle que $V\psi \in T\Psi$ pour tout $\Psi \in \mathcal{P}(\mathcal{H})$ et tout représentant $\psi$ de $\Psi$. De plus, deux tels opérateurs unitaires ou anti-unitaires diffèrent d'un facteur $\lambda \in U(1)$.

Ainsi, puisqu'on dispose de la suite exacte 
$$1 \to U(1) \to U(\mathcal{H}) \to \mathcal{P}U(\mathcal{H}) \to 1$$
ou si on tiens compte des opérateurs anti-unitaires, de la suite exacte
$$1 \to U(1) \to U(\mathcal{H}) \rtimes \mathbb{Z}/2\mathbb{Z} \to \mathcal{P}U(\mathcal{H}) \rtimes \mathbb{Z}/2\mathbb{Z} \to 1$$
tout élément $g\in G$ induit une telle bijection préservant les probabilité, donc d'après le théorème de Wigner, un opérateur unitaire ou anti-unitaire unique à un facteur $U(1)$ près. Les opérateurs anti-unitaires forme une copie de $U(\mathcal{H})$ et ensemble ils constituent le groupe $U(\mathcal{H}) \rtimes \mathbb{Z}/2\mathbb{Z}$, ce qui donne en passant au quotient par $U(1)$ un un unique élément de $\mathcal{P}U(\mathcal{H}) \rtimes \mathbb{Z}/2\mathbb{Z}$. L'unicité a pour conséquence qu'il s'agit finalement bien d'un morphisme $G \to \mathcal{P}U(\mathcal{H}) \rtimes \mathbb{Z}/2\mathbb{Z}$. 

Souvent le groupe $G$ est connexe ce qui, par un argument de continuité force tous les éléments à agir unitairement. Dans ce cas on obtient un morphisme $G \to \mathcal{P}U(\mathcal{H})$.