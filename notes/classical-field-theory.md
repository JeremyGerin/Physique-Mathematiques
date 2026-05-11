# Théorie classique des champs 

Quels aspects de théorie des champs peut-on présenter exclusivement dans le cas classique ?

### TODO
- Généraliser la correspondance entre connexions d'Ehresmann sur le fibré des repères et connexions affines sur le fibré tangent en une correspondance entre connexion d'Ehresmann sur un fibré principal et connexion affine sur une fibration associée quelconque
- Introduire correctement les champs $\gamma^\mu(x)$ et $\sigma^\mu(x)$ sur $\mathcal{M}$ qui généralise les matrices $\gamma^\mu$ et $\sigma^\mu$ qui sont définis dans l'espace de Minkowski plat $\mathbb{R}^{1,3}$
- Introduire les termes de masse de Majorana pour les neutrinos, permettant de donner une masse à un spineur de Weyl gauche sans introduire de spineur de Weyl droit indépendant.

### Bibliographie 
- Kobayashi & Nomizu, Foundations of Differential Geometry (vol. 1 & 2)
- Husemoller, Fibre Bundles
- Nakahara, Geometry, Topology and Physics
- Bleecker, Gauge Theory and Variational Principles
- Sontz, Principal Bundles: The Classical Case
- Lawson & Michelsohn, Spin Geometry
- Friedrich, Dirac Operators in Riemannian Geometry
- Baez & Muniain, Gauge Fields, Knots and Gravity
- Hamilton, Mathematical Gauge Theory
- Chevalley, The Algebraic Theory of Spinors
- Harvey, Spinors and Calibrations

## Fibrations

### Fibrés principaux

Soit $\mathcal{M}$ une variété lisse de dimension $m$ et soit $G$ un groupe de Lie de dimension $r$ et notons $\{(U_\alpha, \phi_\alpha),\alpha \in A\}$ l'atlas maximal de $\mathcal{M}$. Notons $V_\alpha = \phi_\alpha(U_\alpha) \subset \mathbb{R}^m$ et $V_{\beta\alpha} = \phi_\alpha(U_\alpha \cap U_\beta) \subset \mathbb{R}^m$ et notons $\phi_{\beta\alpha} = \phi_\beta \circ \phi_\alpha^{-1} : V_{\beta\alpha} \to V_{\alpha\beta}$ les fonctions de transitions. 

L'idée est de construire de nouvelles variétés de la même façon qu'on peut reconstruire la variété $\mathcal{M}$ par recollement des cartes comme l'espace topologique
$$\left(\bigsqcup_{\alpha \in A}V_\alpha \right)_{\big/\sim}$$
où $\sim$ est la relation d'équivalence engendrée par 
$$x \sim y \iff \phi_{\beta\alpha}(x) = y \quad \forall x\in V_{\beta\alpha} \quad \forall y \in V_{\alpha\beta}$$

**Définition :** Un *cocycle* sur $\mathcal{M}$ à valeur dans $G$ est une famille de fonctions lisses $g_{\beta\alpha} : U_\alpha \cap U_\beta \to G$ telles que
$$g_{\gamma\alpha}(x) = g_{\gamma\beta}(x)g_{\beta\alpha}(x) \quad \forall \alpha, \beta, \gamma \in A, \quad \forall x \in U_\alpha \cap U_\beta \cap U_\gamma$$

Ainsi on pose $H_\alpha = V_\alpha \times G$ et $H_{\beta\alpha} = V_{\beta\alpha} \times G$ et on définit $\gamma_{\beta\alpha} : H_{\beta\alpha} \to H_{\alpha\beta}$ par 
$$\gamma_{\beta\alpha}(x, h) = (\phi_{\beta\alpha}(x), g_{\beta\alpha}(x)h) \quad \forall x \in V_{\beta\alpha} \quad h\in G$$
Et on pose $\mathcal{P}$ l'espace topologique
$$\left(\mathcal{P} = \bigsqcup_{\alpha\in A}H_\alpha\right)_{\big/\sim}$$
où $\sim$ est la relation d'équivalence engendrée par 
$$(x, h) \sim (y, k) \iff \gamma_{\beta\alpha}(x, h) = (y, k) \quad \forall (x, h) \in H_{\beta\alpha} \quad \forall (y, k) \in H_{\alpha\beta}$$

Soit alors $\{(O_\beta, \theta_\beta),\beta \in B\}$ l'atlas maximal de $G$. L'application $V_\alpha \times \theta_\beta(O_\beta) \subset \mathbb{R}^m \times \mathbb{R}^r \to \mathcal{P}$ qui, pour $x\in U_\alpha$ et $h\in O_\beta$ envoie $(\phi_\alpha(x), \theta_\beta(h))$ sur sa classe d'équivalence dans $\mathcal{P}$ est un homéomorphisme sur son image. Notons $p_{\alpha, \beta}: P_{\alpha, \beta} \to V_\alpha \times \theta_\beta(O_\beta)$ l'application réciproque. Ainsi, l'ensemble $\{(P_{\alpha, \beta}, p_{\alpha, \beta}), \alpha \in A \text{ et } \beta \in B\}$ définit un atlas sur $\mathcal{P}$ qui est alors une variété de dimension $m+r$.

De plus, les applications $\pi_\alpha : H_\alpha \to V_\alpha$ de projection sur la première coordonnée induisent une surjection lisse $\pi: \mathcal{P} \to \mathcal{M}$. Et on dispose de difféomorphisme $\Phi_\alpha : \pi^{-1}(U_\alpha) \to H_\alpha$ telles que
$$\pi_\alpha \circ \Phi_\alpha = \phi_\alpha \circ \pi$$

Enfin, $G$ agit à droite librement et de façon lisse sur $\mathcal{P}$ via le passage au quotient de l'action libre de $G$ sur chaque $H_\alpha$ et définit par
$$(\phi_\alpha(x), h).g = (\phi_\alpha(x), hg) \quad \forall (\phi_\alpha(x), h) \in H_\alpha$$
et si de plus $(\phi_\alpha(x), h)\in H_{\beta\alpha}$ alors
$$[\gamma_{\beta\alpha}(\phi_\alpha(x), h)].g = (\phi_\beta(x), g_{\beta\alpha}(x)hg) = \gamma_{\beta\alpha}[(\phi_\alpha(x), h).g]$$

**Définition :** On appelle *fibré principal* sur $\mathcal{M}$ et de groupe structural $G$ une application surjective $\pi : \mathcal{P} \to \mathcal{M}$ telle que
- Il existe des difféomorphismes $\Phi_\alpha : \pi^{-1}(U_\alpha) \to V_\alpha \times G$ appelés *trivialisation locales* telles que $\pi_\alpha \circ \Phi_\alpha = \phi_\alpha \circ \pi$ et telles que $\Phi_\alpha(p.g) = \Phi_\alpha(p).g$
- $G$ agit à droite de façon lisse et librement sur $\mathcal{P}$ et transitivement sur chaque fibre $\mathcal{P}_x = \pi^{-1}(x)$.

**Définition :** Un *morphisme de fibrés principaux* au dessus de $\mathcal{M}$ entre un fibré $\pi_\mathcal{P} : G \hookrightarrow \mathcal{P} \to \mathcal{M}$ et un fibré $\pi_\mathcal{Q} : H \hookrightarrow \mathcal{Q} \to \mathcal{M}$ est la donnée d'un morphisme de groupe de Lie $f : G \to H$ et d'une application lisse $F: \mathcal{P} \to \mathcal{Q}$ tels que
- $\pi_\mathcal{Q} \circ F = \pi_\mathcal{P}$ 
- $F(p.g) = F(p).f(g) \quad \forall p\in \mathcal{P} \quad \forall g\in G$

**Définition :** Soit $\pi : G \hookrightarrow \mathcal{P} \to \mathcal{M}$ un fibré principal. Un *sous-fibré* de $\pi$ est un fibré principal $\theta : H \hookrightarrow \mathcal{Q} \to \mathcal{M}$ où $H$ est un sous-groupe de Lie de $G$ et tel qu'il existe un morphisme de fibré principaux injectif $(\iota, I): \mathcal{Q} \to \mathcal{P}$

**Définition :** Étant donné deux fibrés principaux $\pi_\mathcal{P} : G \hookrightarrow \mathcal{P} \to \mathcal{M}$ et $\pi_\mathcal{Q} : H \hookrightarrow \mathcal{Q} \to \mathcal{M}$ de cocycle respectifs $g_{\beta\alpha}$ et $h_{\beta\alpha}$, le cocycle $(g_{\beta\alpha}, h_{\beta\alpha}) : U_\alpha \cap U_\beta \to G\times H$ définit un fibré principal de groupe structural $G\times H$ qu'on note $\mathcal{P} \diamond \mathcal{Q}$. Il est muni de deux morphismes de fibrés principaux $(\iota_G, I_\mathcal{P})$ et $(\iota_H, I_\mathcal{Q})$ où $\iota_G : G \to G\times H$ et $\iota_H: H \to G\times H$ sont les plongement canonique et où $I_\mathcal{P} : \mathcal{P} \to \mathcal{P} \diamond \mathcal{Q}$ et $I_\mathcal{Q} : \mathcal{P} \to \mathcal{P} \diamond \mathcal{Q}$ sont issus des applications $V_\alpha \times G \to V_\alpha \times G \times H$ et $V_\alpha \times H \to V_\alpha \times G \times H$.

**Proposition (Propriété universelle du produit fibré) :**
Pour tout fibré principal $K \hookrightarrow \mathcal{R} \to \mathcal{M}$, toute paire de morphismes de fibrés principaux $(f_1, F_1) : \mathcal{R} \to \mathcal{P}$ et $(f_2, F_2) : \mathcal{R} \to \mathcal{Q}$, il existe un unique morphisme de fibré principaux $(f, F): \mathcal{R} \to \mathcal{P} \diamond \mathcal{Q}$ tel que 
$$(\iota_G \circ f, I_\mathcal{P} \circ F) = (f_1, F_1)\quad \text{et} \quad (\iota_H \circ f, I_\mathcal{Q} \circ F) = (f_2, F_2)$$

### Fibrés vectoriels associés

Soit $F$ un $\mathbb{K}$-espace vectoriel de dimension finie $k$ et soit $\rho : G \to GL(F)$ une représentation de $G$. On pose $W_\alpha = V_\alpha \times F$ et $W_{\beta\alpha} = V_{\beta\alpha} \times F$ et on définit $\psi_{\beta\alpha} : W_{\beta\alpha} \to W_{\alpha\beta}$ par 
$$\psi_{\beta\alpha}(x, v) = (\phi_{\beta\alpha}(x), \rho(g_{\beta\alpha}(x))v) \quad \forall x\in V_{\beta\alpha} \quad \forall v\in F$$

On pose $\mathcal{E}$ l'espace topologique
$$\left(\bigsqcup_{\alpha\in A} W_\alpha \right)_{\big/\sim}$$
où $\sim$ est la relation d'équivalence engendrée par 
$$(x, v) \sim (y, w) \iff \psi_{\beta\alpha}(x, v) = (y, w) \quad \forall (x, v) \in W_{\beta\alpha} \quad \forall (y, w) \in W_{\alpha\beta}$$

Les applications $W_\alpha \to \mathcal{E}$ qui envoient les élément de $W_\alpha$ sur leur classe d'équivalence dans $\mathcal{E}$ est un homéomorphisme sur son image. Notons $e_\alpha : E_\alpha \to W_\alpha$ l'application réciproque. Ainsi l'ensemble $\{(E_\alpha, e_\alpha, \alpha \in A)\}$ définit un atlas sur $\mathcal{E}$ dont les fontions de transition sont exactement les applications $\psi_{\beta\alpha}$ ce qui fait de $\mathcal{E}$ une variété lisse de dimension $m+k$. 

De plus les applications $\tau_\alpha : W_\alpha \to V_\alpha$ de projection sur la première coordonnée induisent une surjection lisse $\tau: \mathcal{E} \to \mathcal{M}$. Notons alors $\mathcal{E}_x = \tau^{-1}(x)$ la fibre au dessus de $x$, soit $(U_\alpha, \phi_\alpha)$ une carte autour de $x$ dans $\mathcal{M}$ et soit $(E_\alpha, e_\alpha)$ la carte associée dans $\mathcal{E}$. Alors $e_\alpha : \{x\}\times \mathcal{E}_x \to \{\phi_\alpha(x)\}\times F$ est une bijection et on muni $\mathcal{E}_x$ de l'unique structure de $\mathbb{K}$-espace vectoriel faisant de $e_\alpha$ une application linéaire. Cela est bien défini puisque les fonctions de transition $\psi_{\beta\alpha}$ agissent via $\rho(g_{\beta\alpha}(x))\in GL(F)$.

**Définition :** On appelle *fibré vectoriel associé* au fibré principal $G \hookrightarrow \mathcal{P} \to \mathcal{M}$ via la représentation $\rho : G \to GL(F)$, et on le note $\mathcal{P} \times_\rho F$. 

**Définition :** Un *morphisme de fibré vectoriels* au dessus de $\mathcal{M}$ entre un fibré $\mathcal{P} \times_\rho F$ et $\mathcal{Q}\times_\sigma E$ au dessus de $\mathcal{M}$ est la donnée d'un morphisme de fibrés principaux $(f, F)$ entre $\pi_\mathcal{P}$ et $\pi_\mathcal{Q}$ et d'une application linéaire $\ell: F \to E$ tels que $$\ell \circ \rho(g) = \sigma(f(g)) \circ \ell$$
Autrement dit $\ell$ est un morphisme de représentation de $G$ vers $H$ via $f$.

**Définition :** Une *section* d'un fibré vectoriel $\tau: \mathcal{E} \to \mathcal{M}$ de fibre modèle $F$ est une application lisse $s : \mathcal{M} \to \mathcal{E}$ telle que $\tau \circ s = \text{id}_\mathcal{M}$. On note $\Gamma(\mathcal{E})$ l'ensemble des sections de $\mathcal{E}$. C'est un $\mathbb{K}$-espace vectoriel pour la structure linéaire point par point.
 
### Fibré des repères

L'atlas de $\mathcal{M}$ fourni canoniquement un cocycle $d\phi_{\beta\alpha} \circ \phi_\alpha : U_\alpha \cap U_\beta \to GL(m, \mathbb{R})$. Ainsi on appelle le *fibré des repères* le fibré principal $GL(m, \mathbb{R}) \hookrightarrow GL(\mathcal{M}) \to \mathcal{M}$ obtenu grâce à ce cocycle.

La représentation fondamentale de $GL(m, \mathbb{R})$ sur $\mathbb{R}^m$ donne le fibré tangent $T\mathcal{M}$ dont les sections sont les *champs de vecteurs tangents*. 

La représentation duale de $GL(m, \mathbb{R})$ sur $(\mathbb{R}^m)^*$ donne le fibré cotangent $T^*\mathcal{M}$ dont les section sont les *champs de vecteurs cotangent* ou covecteurs. 

Les représentations produits tensoriel de $GL(m, \mathbb{R}) $ sur $\otimes^r(\mathbb{R}^m)^*\otimes^s\mathbb{R}^m$ donnent les fibrés tensoriels $T^{(r, s)}\mathcal{M}$ dont les section sont les *champs tensoriels*. 

La représentation algèbre extérieure de $GL(m, \mathbb{R})$ sur $\Lambda (\mathbb{R}^m)^*$ donnent un fibré $\Lambda T^*\mathcal{M}$ dont les sections sont les *formes différentielles*.

Soit $x\in \mathcal{M}$. Dans le fibré principal des repères $GL(\mathcal{M})$ un élément de la fibre au dessus de $x$ est donné par un représentant $(\varphi_\alpha(x), A)$ où $A\in GL(m, \mathbb{R})$ qui induit un isomorphisme $\mathbb{R}^m \to T_x\mathcal{M}$ donné par 
$$T_x(\phi_\alpha)^{-1} \circ A$$
Réciproquement, étant donné un isomorphisme $e:\mathbb{R}^m \to T_x\mathcal{M}$ et une carte $\phi_\alpha$ autour de $x$ on associe la classe d'équivalence de $(\phi_\alpha(x), T_x\phi_\alpha \circ e) \in GL(\mathcal{M})_x$. Cela ne dépend pas de la carte choisie puisque pour une autre carte $\phi_\beta$ on a $(\phi_\alpha(x), T_x\phi_\alpha \circ e) \sim (\phi_\beta(x), T_x\phi_\beta \circ e)$
puisque 
$$T_x\phi_\beta \circ e = d(\phi_{\beta\alpha})_{\phi_\alpha(x)} \circ T_x\phi_\alpha \circ e$$
Ainsi un élément de la fibre au dessus de $x$ s'identifie canoniquement à un isomorphisme $\mathbb{R}^m \to T_x\mathcal{M}$ ou autrement dit à un choix de base de $T_x\mathcal{M}$, d'où le nom de fibré des repères.

### Structure lorentzienne, orientabilité et orthochronalité

On muni maintenant $\mathcal{M}$ d'une métrique, c'est à dire d'un tenseur $g\in \Gamma(T^{(2,0)}\mathcal{M})$ symétrique et non-dégénérée de signature $(p, q)$.

Soit $x\in \mathcal{M}$. Un élément de la fibre $GL(\mathcal{M})_x$ s'identifie à un isomorphisme $A : \mathbb{R}^m \to T_x\mathcal{M}$. On définie alors 
$$O_x = \{A \in GL(\mathcal{M})_x \mid A^*g_x = \eta\}$$
où $A^*g_x(u,v) = g_x(Au, Av)$ pour tout $u,v\in \mathbb{R}^m$ et où $\eta = \text{diag}(-1, ..., -1, +1, ..., +1)$ est la métrique plate de signature $(p, q)$ sur $\mathbb{R}^m$.

Et puisque pour $A\in O_x$ et $\Lambda \in O(p,q)$ on a
$$(A\Lambda)^*g_x = \Lambda^*A^*g_x = \Lambda^*\eta = \eta$$
L'ensemble $O_x$ est bien un $O(p,q)$-espace homogène principal (i.e. $O(p,q)$ agit librement et transitivement sur $O_x$) sous l'action à droite de $O(p, q) \subset GL(m, \mathbb{R})$

Ainsi on note 
$$O_{(p,q)}(\mathcal{M}) = \bigsqcup_{x\in \mathcal{M}}O_x = \{A \in GL(\mathcal{M}) \mid A^*g_{\pi(A)} = \eta\} $$
où $\pi : GL(\mathcal{M}) \to \mathcal{M}$.

Et puisque $A\in GL(\mathcal{M}) \mapsto A^*g_{\pi(A)}$ est une submersion lisse, $O_{(p, q)}(\mathcal{M})$ est une sous-variété de $GL(\mathcal{M})$. Et par construction cette inclusion, ainsi que l'inclusion $O(p,q) \subset GL(m, \mathbb{R})$ font de $O_{(p,q)}(\mathcal{M})$ un sous-fibré principal de $GL(\mathcal{M})$ de groupe structural $O(p,q)$.

Réciproquement soit $O(p,q) \hookrightarrow \mathcal{Q} \to \mathcal{M}$ et soit $x\in \mathcal{M}$. Étant donné un élément $A$ de la fibre $\mathcal{Q}_x$, c'est à dire un isomorphisme $A : \mathbb{R}^m \to T_x\mathcal{M}$ on défini $g_x$ sur $T_x\mathcal{M}$ par
$$g_x(u, v) = \eta(A^{-1}u, A^{-1}v) \quad \forall u,v\in T_x\mathcal{M}$$
Cette définition de dépend pas du choix de $A$ car si $B = A \Lambda$ pour $\Lambda \in O(p,q)$ alors 
$$\eta(B^{-1}u, B^{-1}v) = \eta(\Lambda^{-1}A^{-1}u, \Lambda^{-1}A^{-1}v) = \eta(A^{-1}u, A^{-1}v)$$
Et on note que $g$ est bien une section lisse car on peut se donner une section locale $s : U_\alpha \to \mathcal{Q}$ et alors $g_x = s(x)^*\eta$ est manifestement lisse.

**Proposition :** Les métriques de signature $(p, q)$ sur $\mathcal{M}$ sont canoniquement en bijection avec les sous-fibré principaux du fibré des repères de groupe structural $O(p, q)$. 

Par les même argument qu'on vient de développer, munir $\mathcal{M}$ d'une structure supplémentaire est équivalent à opérer une reduction du fibré des repères.

Ainsi se donner une orientation sur $\mathcal{M}$, c'est à dire distinguer les changement de coordonnées directs (de déterminant strictement positif) et indirects (de déterminant strictement négatif) revient à se donner un sous-fibré de $GL(\mathcal{M})$ de groupe structural $SL(m, \mathbb{R})$ 

De même, distinguer les changements de coordonnées orthochrones (via le signe de la composante temporelle) revient à se donner un sous-fibré de $GL(\mathcal{M})$ de groupe structural $GL^+(m, \mathbb{R})$

Finalement munir $\mathcal{M}$ d'une métrique lorentzienne $g$ de signature $(p, q)$, d'une orientation et d'une orthochronalité revient à se donner un sous-fibré principal du fibré des repères $GL(\mathcal{M})$ de groupe structural le groupe de Lorentz, c'est à dire le groupe 
$$SO^+(p, q) = O(p, q) \cap SL(m, \mathbb{R}) \cap GL^+(m, \mathbb{R})$$

### Connexion d'Ehresmann et connexion de Lévi-Civita

Soit $\pi : G \hookrightarrow \mathcal{P} \to \mathcal{M}$ un fibré principal. Pour $p\in \mathcal{P}$ et $g\in G$. Notons $L_p : h\in G \mapsto p.h\in\mathcal{P}$ et $R_g: q\in \mathcal{P} \mapsto q.g \in \mathcal{P}$. Comme $L_p(e) = p$ on a 
$$T_eL_p : \mathfrak{g} \to T_p\mathcal{P}$$

On dit qu'un vecteur tangent de $T_p\mathcal{P}$ est *vertical* s'il est dans l'image de $T_eL_p$. On note $$\text{Vert}(T_p\mathcal{P}) = \text{Im}(T_eL_p) = T_eL_p(\mathfrak{g})$$
Et pour $X\in \mathfrak{g}$ on pose $X^\sharp(p) = T_eL_p(X) \in \text{Vert}(T_p\mathcal{P})$ ce qui donne un champs de vecteur $X^\sharp: \mathcal{P} \to T\mathcal{P}$. Remarquons que l'application $.^\sharp: \mathfrak{g} \to \Gamma(T\mathcal{P})$ est un morphisme d'algèbres de Lie.

**Proposition :** On a la suite exacte courte d'espaces vectoriels pour $x\in \mathcal{M}$ et $p\in \mathcal{P}$ tel que $\pi(p) = x$
$$0 \to \mathfrak{g} \xrightarrow{T_e L_p} T_p\mathcal{P} \xrightarrow{T_p \pi} T_x\mathcal{M} \to 0$$

**Définition :** Une *connexion d'Ehresmann* est une 1-forme différentielle $\omega$ à valeur dans $\mathfrak{g}$, autrement dit c'est une section du fibré $T^*\mathcal{P} \otimes \mathfrak{g}$, telle que 
$$R_g^*\omega = \text{ad}_{g^{-1}} \circ \omega \quad \forall g \in G \quad \text{et} \quad \omega(X^\sharp) = X \quad \forall X \in \mathfrak{g}$$
où $\text{Ad}_g : h \in G \mapsto ghg^{-1}\in G$ et $\text{ad}_g = T_e\text{Ad}_g: \mathfrak{g} \to \mathfrak{g}$.

**Définition :** Une *connexion affine* sur $\mathcal{M}$ est une application $\nabla : \Gamma(T\mathcal{M})\times \Gamma(T\mathcal{M}) \to \Gamma(T\mathcal{M})$ bilinéaire vérifiant
- $\nabla_{fX}Y = f\nabla_XY$
- $\nabla_X (fY) = X(f)Y + f\nabla_XY$

On rappelle qu'une connexion affine s'étend de manière unique sur les fibrés tensoriels $\nabla: \Gamma(T\mathcal{M})\times \Gamma(T^{(r, s)}\mathcal{M}) \to \Gamma(T^{(r, s)}\mathcal{M})$ de sorte que 
- cela commute avec les contractions
- cela vérifie la règle de Leibnitz par rapport au produit tensoriel c'est à dire 
$$\nabla_X (T\otimes S) = \nabla_X T \otimes S + T \otimes \nabla_X S$$

On appelle *torsion* d'une connexion le tenseur 
$$\text{Tor}_\nabla(X, Y) = \nabla_X Y - \nabla_Y X - [X, Y]$$

Les composantes de $\nabla$ dans une carte s'appelle les *symboles de Christoffel* donné par $\nabla_{\partial_\mu}\partial_\nu = \Gamma_{\mu\nu}^\rho \partial_\rho$

Dans le cas particulier du fibré des repères $GL(m, \mathbb{R}) \hookrightarrow GL(\mathcal{M}) \to \mathcal{M}$ la donnée d'une connexion d'Ehresmann est équivalente à la donnée d'une connexion affine sur $\mathcal{M}$. Pour cela on se donne une carte $ (U, \phi)$ de $\mathcal{M}$ et une section locale associée $s : U \subset \mathcal{M} \to GL(\mathcal{M})$ et on pose
$$\Gamma_{\mu\nu}^\rho = [s^*\omega(\partial_\mu)]_\nu^\rho$$
Vérifions que ça ne dépend pas du choix de la carte. Soit $(U', \phi')$ une autre carte et $s' : U' \subset \mathcal{M} \to GL(\mathcal{M})$ la section locale associée. Alors par construction, $s$ et $s'$ sont lié par 
$$s'(x) = s(x).g(x) \quad \forall x \in U \cap U'$$
Ainsi on a 
$$T_xs' = T_{s(x)}R_{g(x)} \circ T_xs + T_{g(x)}L_{s(x)} \circ T_x g$$
Notons $A = s^*\omega$ et respectivement $A' = s'^*\omega$. Ainsi on a
$$A'_x = \omega_{s'(x)}(T_x s') = \omega_{s'(x)}[T_{s(x)}R_{g(x)}(T_xs)] + \omega_{s'(x)}[T_{g(x)}L_{s(x)}(T_x g)]$$
or 
$$\omega_{s'(x)}[T_{s(x)}R_{g(x)}(T_x s)] = (R_{g(x)}^*\omega)_{s(x)}(T_x s) = \text{ad}_{g(x)^{-1}}(\omega_{s(x)}(T_x s)) = \text{ad}_{g(x)^{-1}}(A_x)$$
Et puisque pour tout $h\in GL(m, \mathbb{R})$ on a $\pi(s(x).h) = x$, donc 
$$T_{s'(x)}\pi \circ T_{g(x)}L_{s(x)} = 0$$
donc pour tout $v\in T_{g(x)}GL(m, \mathbb{R})$ on a 
$$T_{g(x)}L_{s(x)}(v) \in \ker(T_{s'(x)}\pi) = \text{Vert}(T_{s'(x)}GL(\mathcal{M}))$$
Aussi d'après la suite exacte courte $T_eL_{s'(x)}$ est un isomorphisme entre $\mathfrak{gl}(m, \mathbb{R})$ et $\text{Vert}(T_{s'(x)}GL(\mathcal{M}))$ ainsi pour $X\in \Gamma(T\mathcal{M})$ il existe un unique $Y \in \mathfrak{gl}(m, \mathbb{R})$ tel que 
$$T_eL_{s'(x)}(Y) = T_{g(x)}L_{s(x)}(T_x g(X))$$
Ainsi on a 
$$\omega_{s'(x)}[T_{g(x)}L_{s(x)}(T_x g(X))] = \omega_{s'(x)}[T_eL_{s'(x)}(Y)] = \omega_{s'(x)}[Y^\sharp(s'(x))] = Y$$
Or $s'(x) = s(x).g(x)$ donc pour $h\in GL(m, \mathbb{R})$ on a 
$$s'(x).h = (s(x).g(x)).h = s(x).(g(x)h)$$
donc $L_{s'(x)} = L_{s(x)} \circ \rho_{g(x)}$
et on a 
$$T_eL_{s'(x)} = T_{g(x)}L_{s(x)} \circ T_e \rho_{g(x)}$$
Donc 
$$Y = T_e \rho_{g(x)}^{-1}(T_x g(X)) = T_e \rho_{g(x)^{-1}}(T_x g(X))$$
Finalement 
$$A'_x = \text{ad}_{g(x)^{-1}} \circ A_x + T_e \rho_{g(x)^{-1}} \circ T_x g$$
Ainsi
$$A'_x(\partial'_\mu) = \text{ad}_{g(x)^{-1}}(A_x(g(x)_\mu^\nu\partial_\nu)) + T_e \rho_{g(x)^{-1}}(T_x g(\partial'_\mu))$$
or 
$$[\text{ad}_{g(x)^{-1}}(A_x(g(x)_\mu^\nu\partial_\nu))]_\alpha^\beta = [g^{-1}[g_\mu^\nu A_x(\partial_\nu)]g]_\alpha^\beta = g_\mu^\nu (g^{-1})_\alpha^\delta \Gamma_{\nu\delta}^\rho g_\rho^\beta$$
et 
$$[T_e \rho_{g(x)^{-1}}(T_x g(\partial'_\mu))]_\alpha^\beta = [(\partial'_\mu g) g^{-1}]_\alpha^\beta = (\partial'_\mu g)_\delta^\beta (g^{-1})_\alpha^\delta = g_\mu^\nu (\partial_\nu g)_\delta^\beta (g^{-1})_\alpha^\delta$$
Ainsi 
$$\Gamma_{\mu\alpha}'^\beta = g_\mu^\nu (g^{-1})_\alpha^\delta \Gamma_{\nu\delta}^\rho g_\rho^\beta + g_\mu^\nu (\partial_\nu g)_\delta^\beta (g^{-1})_\alpha^\delta = g_\mu^\nu \left[(g^{-1})_\alpha^\delta \Gamma_{\nu\delta}^\rho g_\rho^\beta + (\partial_\nu g)_\delta^\beta (g^{-1})_\alpha^\delta \right]$$
Qui est bien la règle de transformation des symboles de Christoffel sous un changement de carte. 

Réciproquement étant donné une connexion affine sur $\mathcal{M}$ on définit sur chaque carte de $\mathcal{M}$ une 1-forme $A$ telle que 
$$\Gamma_{\mu\nu}^\rho = [A(\partial_\mu)]_\nu^\rho$$
Et par le calcul précédent, la règle de transformation des symboles de Christoffel sous un changement de carte assure que deux telles 1-formes $A$ et $A'$ vérifient 
$$A'_x = \text{ad}_{g(x)^{-1}} \circ A_x + T_e \rho_{g(x)^{-1}} \circ T_x g$$
Ainsi (cf mémoire de M1) cette collection de 1-formes locale définie une unique connexion d'Ehresmann $\omega$ sur $GL(\mathcal{M})$ telle qu'étant donné une section locale $s : U \subset \mathcal{M} \to GL(\mathcal{M})$ on ait 
$$A = s^*\omega$$

En définitive, se donner une connexion affine sur $\mathcal{M}$ est équivalent à se donner une connexion d'Ehresmann sur le fibré des repères $GL(\mathcal{M})$.

En réalité, le même argument montre que pour tout fibré principal $G \hookrightarrow \mathcal{P} \to \mathcal{M}$ la donnée d'une connexion d'Ehresmann $\omega$ sur $\mathcal{P}$ fourni une connexion affine sur chaque fibration vectorielle associée $\mathcal{P} \times_\rho V$ via l'application $D : \Gamma(T\mathcal{M})\times \Gamma(\mathcal{P}\times_\rho V) \to \Gamma(\mathcal{P}\times_\rho V)$ définie par
$$D_X\psi = X(\psi) + \rho_*(A(X))\psi$$
où $A = s^*\omega$ et $\rho_* = T_e\rho : \mathfrak{g} \to \mathfrak{gl}(V)$. La loi de transformation de $A$ sous changement de section $s$ garantit que $D_X\psi$ est bien définie globalement.

**Définition :** Une connexion affine $\nabla$ sur une variété lorenzienne $(\mathcal{M}, g)$ est dite *métrique* si 
$$\nabla_X g = 0 \quad \forall X \in \Gamma(T\mathcal{M})$$

Puisque la donnée d'une métrique sur $\mathcal{M}$ est équivalente à la donnée d'un sous-fibré principal $O(p,q) \hookrightarrow \mathcal{Q} \to \mathcal{M}$ du fibré des repères et puisque la donnée d'une connexion affine $\nabla$ sur $\mathcal{M}$ est équivalente à la donnée d'une connexion d'Ehresmann $\omega$ sur $GL(\mathcal{M})$, cette condition équivaux à demander que la restriction de $\omega$ à $\mathcal{Q}$ soit à valeur dans $\mathfrak{o}(p, q)$. Autrement dit que la 1-forme tiré en arrière par l'inclusion de $\omega$ soit une connexion d'Ehresmann sur $\mathcal{Q}$.  

En effet, supposons que pour tout $X\in \Gamma(T\mathcal{M})$ on a $\nabla_X g = 0$, autrement dit on a $\forall Y, Z\in \Gamma(T\mathcal{M})$ 
$$X(g(Y, Z)) = g(\nabla_X Y, Z) + g(Y, \nabla_X Z)$$
Et dans une carte on a d'une part 
$$X(g(Y, Z)) = X(g_{\mu\nu})Y^\mu Z^\nu + g_{\mu\nu}X(Y^\mu)Z^\nu + g_{\mu\nu} Y^\mu X(Z^\nu)$$
et d'autre part
$$g(\nabla_X Y, Z) + g(Y, \nabla_X Z) =  g_{\mu\nu}(X(Y^\mu) + \Gamma_{\rho\sigma}^\mu X^\rho Y^\sigma) Z^\nu + g_{\mu\nu}Y^\mu(X(Z^\nu) + \Gamma_{\rho\sigma}^\nu X^\rho Z^\sigma)$$
Ainsi en simplifiant des deux coté par $g_{\mu\nu}X(Y^\mu)Z^\nu$ et $g_{\mu\nu}Y^\nu X(Z^\mu)$ la condition devient 
$$X(g_{\mu\nu})Y^\mu Z^\nu = g_{\mu\nu}\Gamma_{\rho\sigma}^\mu X^\rho Y^\sigma Z^\nu + g_{\mu\nu}\Gamma_{\rho\sigma}^\nu X^\rho Y^\mu Z^\sigma$$
Puisque c'est vrai pour tout $Y, Z$ alors en posant $X = \partial_\rho$ la condition devient
$$\partial_\rho g_{\mu\nu} = g_{\alpha\nu}\Gamma_{\rho\mu}^\alpha + g_{\mu\alpha}\Gamma_{\rho\nu}^\alpha$$
Soit maintenant une section locale $s: U \to \mathcal{Q}$ associée à la carte orhtonormée qu'on est donnée, elle associe à chaque $x\in U$ un isomorphisme $s(x) : \mathbb{R}^m \to T_x\mathcal{M}$ tel que $s(x)^*g_x = \eta$. Ainsi $\partial_\rho g_{\mu\nu} = 0$ et donc la condition devient
$$g_{\alpha\nu}\Gamma_{\rho\mu}^\alpha + g_{\mu\alpha}\Gamma_{\rho\nu}^\alpha = 0$$
Or on rappelle que $\Gamma_{\rho\nu}^\alpha = [s^*\omega(\partial_\rho)]_\nu^\alpha$ ainsi $s^*\omega$ est bien à valeur dans $\mathfrak{o}(p, q)$ ce qui suffit pour dire que la restriction de $\omega$ à $\mathcal{Q}$ est à valeur dans $\mathfrak{o}(p, q)$. 

Réciproquement si la restriction de $\omega$ à $\mathcal{Q}$ est à valeur dans $\mathfrak{o}(p, q)$ alors pour toute section $s: U \to \mathcal{Q}$ la 1-forme $s^*\omega$ est à valeur dans $\mathfrak{o}(p, q)$ si bien qu'on a dans toute carte orthonormée
$$g_{\alpha\nu}\Gamma_{\rho\mu}^\alpha + g_{\mu\alpha}\Gamma_{\rho\nu}^\alpha = 0$$
Autrement dit $\nabla_X g = 0$ pour tout $X\in \Gamma(T\mathcal{M})$

**Définition :** La *connexion de Lévi-Civita* est l'unique connexion métrique $\nabla$ sur $\mathcal{M}$ sans torsion (i.e. telle que $\text{Tor}_\nabla = 0$). 

### Courbure

**Définition :** Soit $\pi : G \hookrightarrow \mathcal{P} \to \mathcal{M}$ un fibré principal muni d'une connexion d'Ehresmann $\omega$ sur $\mathcal{P}$. La *courbure* de $\omega$ est la 2-forme à valeur dans $\mathfrak{g}$ sur $\mathcal{P}$ défini pour $U,V \in \Gamma(T\mathcal{P})$ par
$$\Theta(U, V) = d\omega(U, V) + [\omega(U), \omega(V)]$$

Dans le cas particulier du fibré des repères $GL(m, \mathbb{R}) \hookrightarrow GL(\mathcal{M}) \to \mathcal{M}$ la courbure est une 2-forme à valeur dans $\mathfrak{gl}(m, \mathbb{R})$. Via une section locale $s: U\to GL(\mathcal{M})$, on obtient une 2-forme locale $F = s^*\Theta$ à valeur dans $\mathfrak{gl}(m, \mathbb{R})$ dont les composantes dans une carte sont 
$$[F(\partial_\mu, \partial_\nu)]_\sigma^\rho = R_{\mu\nu\sigma}^\rho$$
Notons $A = s^*\omega$ alors pour $X, Y \in \Gamma(T\mathcal{M})$
$$F(X, Y) = (s^*\Theta)(X, Y) = \Theta(Ts(X), Ts(Y)) = d\omega(Ts(X), Ts(Y)) + [\omega(Ts(X)), \omega(Ts(Y))]$$
donc clairement 
$$F(X, Y) = dA(X, Y) + [A(X), A(Y)]$$
Ainsi dans une carte on a 
$$F(\partial_\mu, \partial_\nu)_\sigma^\rho = \partial_\mu\Gamma_{\nu\sigma}^\rho - \partial_\nu \Gamma_{\mu\sigma}^\rho + \Gamma_{\mu\lambda}^\rho \Gamma_{\nu\sigma}^\lambda - \Gamma_{\nu\lambda}^\rho \Gamma_{\mu\sigma}^\lambda = R_{\mu\nu\sigma}^\rho$$
où $R_{\mu\nu\sigma}^\rho$ sont exactement les composante du tenseur de Riemann $\text{Riem}_\nabla$ donné par 
$$\text{Riem}_\nabla(X, Y, Z) = \nabla_X\nabla_Y Z - \nabla_Y\nabla_X Z - \nabla_{[X, Y]}Z$$

**Proposition (Identité de Bianchi):** Soit $\pi : G \hookrightarrow \mathcal{P} \to \mathcal{M}$ un fibré principal muni d'une connexion d'Ehresmann $\omega$ sur $\mathcal{P}$ et soit $s: U\to \mathcal{P}$ une section locale. On note $A = s^*\omega$ et $F = s^*\Theta$. Alors pour tout $X, Y, Z \in \Gamma(T\mathcal{M})$ on a
$$dF(X, Y, Z) + [A(X), F(Y, Z)] + [A(Y), F(Z, X)] + [A(Z), F(X, Y)] = 0$$

### Structure spinorielle

Jusqu'à présent on a décrit l'essentielle des structures dont on a besoin pour notre description d'une théorie classique des champs complète : on se donne une variété $\mathcal{M}$ et on se donne un sous-fibré $SO(p, q)^+ \hookrightarrow \mathcal{P} \to \mathcal{M}$ du fibré des repères $GL(\mathcal{M})$ de $\mathcal{M}$ ce qui revient à munir $\mathcal{M}$ d'une métrique lorentzienne, d'une orientation et d'une orthochronalité. Un champs sur $\mathcal{M}$ est donc une section d'une fibration vectorielle associée $\mathcal{P}\times_\rho V$ donnée par une représentation $\rho : SO(1,3)^+ \to GL(V)$ du groupe de Lorentz puisqu'on a besoin de décrire l'effet d'une transformation de Lorentz sur ce champs.

Or on dispose d'une classification complète des représentations de dimension finie du groupe de Lorentz. Pour cela, on considère son revêtement universel $\Phi : SL(2, \mathbb{C}) \to SO^+(1, 3)$. On classifie les représentation irréductibles de $SL(2, \mathbb{C})$ et les représentations irréductible de $SO^+(1, 3)$ sont exactement celle qui passent au quotient par $\ker \Phi = \mathbb{Z}/2\mathbb{Z}$. Les autres sont les représentations dites *spinorielles*. 

Cependant, on souhaiterai malgré tout pouvoir considérer ces représentations spinorielles. Et pour cela on doit disposer d'un fibré principal $SL(2, \mathbb{C}) \hookrightarrow \mathcal{Q} \to \mathcal{M}$ tel qu'il existe un morphisme de fibrés principaux $(\Phi, F) : \mathcal{Q} \to \mathcal{P}$ où $\Phi$ est bien le morphisme de revêtement qu'on s'est donné. Ainsi on doit construire un cocycle 
$$h_{\alpha\beta} : U_\alpha \cap U_\beta \to SL(2, \mathbb{C})$$
tel que $\Phi \circ h_{\alpha\beta} = g_{\alpha\beta}$ où $g_{\alpha\beta} : U_\alpha \cap U_\beta \to SO^+(1, 3)$ est le cocycle définissant $\mathcal{P}$.

Naïvement, on aurai envie d'utiliser le revêtement qui est un difféomorphisme local pour relever localement $g_{\alpha\beta}$ en $h_{\alpha\beta}$. Cependant sur les triples intersections cela ne coïncide pas nécessairement. La différence est une 2-cochaine $c$ à valeur dans $\mathbb{Z}/2\mathbb{Z}$ qui est automatiquement un 2-cocycle. Si ce 2-cocycle $c$ est un cobord, autrement dit si $[c] = 0$ dans $H^2(\mathcal{M}, \mathbb{Z}/2\mathbb{Z})$ alors il existe un 1-cocycle à valeur dans $\mathbb{Z}/2\mathbb{Z}$ qui permet de définir sans ambiguité le cocycle $h_{\alpha\beta}$.  

**Définition :** On dit qu'une variété lorentzienne $\mathcal{M}$, c'est à dire la donnée d'une variété $\mathcal{M}$ et d'un sous-fibré $SO(1, 3)^+ \hookrightarrow \mathcal{P} \to \mathcal{M}$ du fibré des repères, admet une *structure spin* si $[c] = 0$ dans $H^2(\mathcal{M}, \mathbb{Z}/2\mathbb{Z})$. Dans ce cas on appelle *fibré des spin-repères* tout fibré principal $SL(2, \mathbb{C}) \hookrightarrow \mathcal{Q} \to \mathcal{M}$ muni d'un morphisme de fibrés principaux $(\Phi, F) : \mathcal{Q} \to \mathcal{P}$ où $\Phi$ désigne le morphisme de revêtement.

## Théorie classique des champs 

On se donne
- Une variété $\mathcal{M}$ de dimension 4.
- Une structure lorentzienne orienté orthochrone en se donnant un sous-fibré $SO(1, 3)^+ \hookrightarrow \mathcal{P} \to \mathcal{M}$ du fibré des repères $GL(\mathcal{M})$
- Une structure spinorielle en se donnant un fibré des spin-repères $SL(2, \mathbb{C}) \hookrightarrow \mathcal{Q} \to \mathcal{M}$ muni d'un morphisme $(\Phi, F): \mathcal{Q} \to \mathcal{P}$ où $\Phi : SL(2, \mathbb{C}) \to SO(1, 3)^+$ désigne le morphisme de revêtement
- Un groupe de Lie $H$ qu'on appelle *groupe de jauge* ainsi que d'un fibré principal $H\hookrightarrow \mathcal{R} \to \mathcal{M}$ qu'on appelle *fibré de jauge*
- La connexion de Lévi-civita sur $\mathcal{P}$ qui tirée en arrière donne une connexion canonique sur $\mathcal{Q}$.
- Une connexion sur $\mathcal{R}$ qu'on appelle *potentiel de jauge*
- Un $\mathbb{C}$-espace vectoriel $V$ ainsi qu'une représentation $\rho : SL(2, \mathbb{C})\times H \to GL(V)$ telle que $\rho(\text{id}, .): H \to U(V)$ est une représentation unitaire du groupe de jauge.
- Une section $\psi$ de $(\mathcal{Q}\diamond \mathcal{R})\times_\rho V$ qu'on appelle *champs de matière*

### Action d'Einstein-Hilbert

L'action totale de la théorie peut s'écrire
$$S[g, A, \psi] = S_{EH}[g] + S_{YM}[g, A] + S_{\text{mat}}[g, A, \psi]$$
où $S_{EH}$ est le terme qui ne dépend que de la métrique $g$.

**Théorème (de Lovelock) :** La seule action admissible (i.e. telle que le tenseur énergie-impulsion soit symétrique, vérifie l'identité de Bianchi, dont les équation d'Euler-Lagrange font intervenir des dérivées d'ordre au plus 2, qui redonne la mécanique newtonnienne) est l'action d'Einstein-Hilbert :
$$S_{EH} = \frac{1}{2\kappa}\int_\mathcal{M} d^4x (R - 2\Lambda)\sqrt{-\text{det}g}$$
où $R = g^{\mu\nu}R_{\mu\rho\nu}^\rho$ est la courbure scalaire, $\Lambda \in \mathbb{R}$ est la constante cosmologique et $\kappa$ est une constante réelle qui, pour retrouver la limite newtonienne doit être fixée à $\kappa = 8\pi G$ 

Ainsi les équations d'Euler-Lagragange donne pour la variation par rapport à $g$, les équations d'Einstein
$$R_{\mu\nu} - \frac{1}{2}g_{\mu\nu}R = \kappa T_{\mu\nu} - \Lambda g_{\mu\nu}$$
où $T_{\mu\nu} = -\frac{2}{\sqrt{-\text{det}g}}\frac{\delta S_{\text{mat}}}{\delta g^{\mu\nu}}$ est le tenseur énergie-impulsion.

### Action de Yang-Mills

Le terme $S_{YM}[g, A]$ est celui qui ne dépend que du champs de jauge $A$ et de la métrique $g$. L'action de Yang-Mills s'écrit
$$S_{YM}[g, A] = \frac{1}{2g_{YM}^2}\int_\mathcal{M}d^4x \text{ tr}(F_{\mu\nu}F^{\mu\nu})\sqrt{-\text{det}g}$$
où $F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu + [A_\mu, A_\nu]$ est la courbure

Ainsi les équations d'Euler-Lagrange donne pour la variation par rapport à $A$ 
$$\nabla_\nu F^{\mu\nu} + [A_\nu, F^{\mu\nu}] = J^\mu$$
où $J^\mu = \frac{1}{\sqrt{-\text{det}g}}\frac{\delta S_{\text{mat}}}{\delta A_\mu}$ est le vecteur des courant de matière.

De plus l'identité de Bianchi donne les équations de structures 
$$\nabla_{[\mu}F_{\nu\rho]} + [A_{[\mu}, F_{\nu\rho]}] = 0 $$

### Action de Klein-Gordon

Ici on se donne un champ de Klein-Gordon $\phi \in \Gamma((\mathcal{Q}\diamond \mathcal{R})\times_\rho \mathbb{C}^n)$ dont la partie $SL(2, \mathbb{C})$ de la représentation $\rho$ est la somme directe de $n$ représentations triviales $(0, 0)$. L'action de Klein-Gordon s'écrit 
$$S_{KG}[g, A, \phi] = \int_\mathcal{M}d^4x(g^{\mu\nu}(D_\mu\phi)^\dagger D_\nu\phi -  m^2\phi^\dagger \phi)\sqrt{-\text{det}g}$$

Ainsi les équations d'Euler-Lagrange donne pour la variation par rapport à $\phi$
$$D_\mu D^\mu \phi + m^2\phi = 0$$

### Action de Weyl 

Ici on se donne un champ de Weyl gauche $\psi_L \in \Gamma((\mathcal{Q}\diamond \mathcal{R})\times_\rho \mathbb{C}^2)$ dont la partie $SL(2, \mathbb{C})$ de la représentation $\rho$ est la représentation fondamentale $(1/2, 0)$. L'action de Weyl gauche s'écrit 

$$S_{WL}[g, A, \psi_L] = \int_\mathcal{M}d^4x i \psi_L^\dagger \overline{\sigma}^\mu D_\mu \psi_L \sqrt{-\text{det}g}$$

De même on se donne un champ de Weyl droit $\psi_R \in \Gamma((\mathcal{Q}\diamond \mathcal{R})\times_\rho \mathbb{C}^2)$ dont la partie $SL(2, \mathbb{C})$ de la représentation $\rho$ est la représentation complexe conjuguée de la représentation fondamentale $(0, 1/2)$. L'action de Weyl droite s'écrit 

$$S_{WR}[g, A, \psi_R] = \int_\mathcal{M}d^4x i \psi_R^\dagger \sigma^\mu D_\mu \psi_R \sqrt{-\text{det}g}$$

où $\sigma^\mu = (\text{id}, \sigma^i)$ et $\overline{\sigma}^\mu = (\text{id}, -\sigma^i)$ où $\sigma^i$ sont les matrices de Pauli

Ainsi les équations d'Euler-Lagrange donnent pour la variation par rapport à $\psi_L^\dagger$ et $\psi_R^\dagger$ 
$$i\overline{\sigma}^\mu D_\mu \psi_L = 0 \quad \text{et} \quad i\sigma^\mu D_\mu \psi_R = 0$$

### Action de Dirac

Ici on se donne un champ de Dirac $\psi \in \Gamma((\mathcal{Q}\diamond \mathcal{R})\times_\rho \mathbb{C}^4)$ dont dont la partie $SL(2, \mathbb{C})$ de la représentation $\rho$ est la représentation de Dirac $(1/2, 0)\oplus (0, 1/2)$. L'action de Dirac s'écrit
$$S_D[g, A, \psi] = \int_\mathcal{M}d^4x\overline{\psi}(i\gamma^\mu D_\mu - m)\psi\sqrt{-\text{det}g}$$
où $\overline{\psi} = \psi^\dagger\gamma^0$ est le spineur de Dirac adjoint et les $\gamma^\mu$ sont les matrices de Dirac 
$$\gamma^\mu = \begin{pmatrix}
0 & \sigma^\mu \\
\overline{\sigma}^\mu & 0
\end{pmatrix}$$
vérifiant les relations de Clifford
$$\{\gamma^\mu, \gamma^\nu\} = 2 g^{\mu\nu}$$
Ainsi les équations d'Euler-Lagrange donnent pour la variation par rapport à $\overline{\psi}$ 
$$(i\gamma^\mu D_\mu - m)\psi = 0$$

Notons que si $m=0$ et si on note $\psi = \begin{pmatrix}\psi_L \\\psi_R\end{pmatrix}$ alors $\psi_L$ (resp. $\psi_R$) sont des champs de Weyl gauche (resp. droit).

### Action de Higgs 

Ici on se donne un champ de Higgs $\phi \in \Gamma((\mathcal{Q}\diamond \mathcal{R})\times_\rho \mathbb{C}^n)$ dont la partie $SL(2, \mathbb{C})$ de la représentation $\rho$ est la somme directe de $n$ représentations triviales $(0, 0)$. L'action de Higgs s'écrit 
$$S_{H}[g, A, \phi] = \int_\mathcal{M}d^4x(g^{\mu\nu}(D_\mu\phi)^\dagger D_\nu\phi -  \mathcal{V}(\phi))\sqrt{-\text{det}g}$$
où $\mathcal{V}(\phi)$ est le potentiel de Higgs. 

Ainsi les équations d'Euler-Lagrange donnent pour la variation par rapport à $\phi^\dagger$
$$D_\mu D^\mu\phi - \frac{\partial\mathcal{V}}{\partial\phi^\dagger} = 0$$

On demande à ce que $\mathcal{V}$ soit invariant sous le groupe de jauge, c'est à dire que $\mathcal{V}(\rho(h)\phi) = \mathcal{V}(\phi)$ pour tout $h\in H$. La forme la plus générale (pour des question de renormalisation) est 
$$\mathcal{V}(\phi) = -\mu^2\phi^\dagger \phi + \lambda (\phi^\dagger \phi)^2$$
avec $\mu^2 > 0$ et $\lambda > 0$. Et dans ce cas l'équation d'Euler-Lagrange devient 
$$D_\mu D^\mu\phi + \mu^2\phi - 2\lambda(\phi^\dagger\phi)\phi = 0$$

Une solution statique et homogène $\phi_0$ des équations d'Euler-Lagrange est un minimum du potentiel $\mathcal{V}$. Puisque $\phi_0$ est une section globale constante de $\mathcal{R}\times_\rho \mathbb{C}^n$, ses expressions locales dans deux cartes $(U_\alpha, \phi_\alpha)$ et $(U_\beta, \phi_\beta)$ sont reliés sur $U_\alpha \cap U_\beta$ par 
$$\rho(g_{\alpha\beta}(x))\phi_0 = \phi_0 \quad \forall x\in U_\alpha \cap U_\beta$$
Donc les cocycles de transition $g_{\alpha\beta}: U_\alpha \cap U_\beta \to H$ du fibré de jauge $\mathcal{R}$ prennent leurs valeurs dans le stabilisateur 
$$K = \{h\in H \mid \rho(h)\phi_0 = \phi_0\}$$
Cela donne donc un sous-fibré de groupe structural $K$ du fibré de jauge $\mathcal{R}$. C'est la brisure spontanée de la symétrie de jauge.

Or on a 
$$D_\mu\phi_0 = \rho_*(A_\mu)\phi_0$$
donc le terme cinétique dans l'action de Higgs devient 
$$g^{\mu\nu}(D_\mu\phi_0)^\dagger D_\nu\phi_0 = g^{\mu\nu}[\rho_*(A_\mu)\phi_0]^\dagger[\rho_*(A_\nu)\phi_0] $$
Ainsi en décomposant $A_\mu = A_\mu^a T_a$ où $T_a$ sont les générateurs de $\mathfrak{h}$ ce terme s'écrit
$$g^{\mu\nu}A_\mu^a A_\nu^b M_{ab}$$
où $M_{ab} = [\rho_*(T_a)\phi_0]^\dagger[\rho_*(T_b)\phi_0]$ est ce qu'on appelle la *matrice de masse* des bosons de jauges. 

On remarque que si $X \in \mathfrak{k}$ alors $\rho_*(X)\phi_0 = 0$ si bien qu'on obtient des termes de masse seulement pour les bosons $A_\mu$ qui ne sont pas dans $\mathfrak{k}$. 

### Action de Yukawa

Le couplage de Yukawa est un terme d'interaction entre le champs de Higgs $\phi \in \Gamma((\mathcal{Q}\diamond \mathcal{R})\times_\rho \mathbb{C}^2)$ et une paire de spineurs de Weyl gauche $\psi_L$ et droit $\psi_R$. L'action de Yukawa s'écrit 

$$S_Y[g, A, \psi_L, \psi_R, \phi] = \int_\mathcal{M}d^4x \left(y\psi_L^\dagger\phi\psi_R + \overline{y}\psi_R^\dagger\phi^\dagger\psi_L \right)\sqrt{-\text{det}g}$$

où $y\in \mathbb{C}$ est la constante de couplage de Yukawa.

Les équations d'Euler-Lagrange pour l'action $S_H+S_{WL}+S_{WR}+S_Y$ donnent pour la variation par rapport à $\psi_L^\dagger$ et $\psi_R^\dagger$ 
$$i\overline{\sigma}^\mu D_\mu \psi_L = y\phi\psi_R \quad \text{et} \quad i\sigma^\mu D_\mu \psi_R = \overline{y}\phi^\dagger\psi_L$$
et pour la variation par rapport à $\phi^\dagger$
$$D_\mu D^\mu\phi - \frac{\partial\mathcal{V}}{\partial\phi^\dagger} = \overline{y}\psi_L\psi_R^\dagger$$

Après brisure de symétrie ces deux équations couplées deviennent exactement l'équation de Dirac massive en regroupant $\psi = \begin{pmatrix}\psi_L \\\psi_R\end{pmatrix}$ où $m = y\phi_0$.

### Théorème de Noether, symmétries et quantités conservées

**Théorème (de Noether)** A toute symmétrie continue de l'action est associée une quantité conservée

#### Symétries externes

L'invariance de $S$ sous difféomorphisme de $\mathcal{M}$ est garantie par la construction géométrique : c'est le principe de covariance générale. Pour chaque vecteur de Killing $X$ de $(\mathcal{M}, g)$ on obtient un courant de Noether conservé
$$J_X^\mu = T^{\mu\nu}X_\nu \quad \text{avec} \nabla_\mu J_X^\mu = 0$$

#### Symétries internes 

L'invariance de $S_{YM} + S_{\text{mat}}$ sous les transformations de jauges $f : \mathcal{M} \to H$ dont on rappelle qu'elles agissent sur le champs de jauge $A_\mu$ par 
$$A'_\mu = \text{ad}_{f^{-1}}(A_\mu) + T_e\rho_{f^{-1}}\circ \partial_\mu f $$
et sur les champs de matière par 
$$\psi' = \rho(f)\psi$$
Ainsi le courant de Noether conservé associé à la symétrie de jauge $f = \text{exp}(X^a T_a)$ est 
$$J_X^\mu = J^\mu_a X^a \quad \text{avec} \quad \nabla_\mu J_X^\mu = 0$$

## Modèle standard classique

Le groupe de jauge du modèle standard (avant brisure de symétrie) est $H = U(1)\times SU(2)\times SU(3)$. 

On note comme base de $\mathfrak{h} = \mathfrak{u}(1)\times\mathfrak{su}(2)\times\mathfrak{su}(3)$
- $B_\mu$ le générateur de $\mathfrak{u}(1)$
- $W_\mu^a$ où $a = 1, 2, 3$ les générateurs de $\mathfrak{su}(2)$
- $G_\mu^a$ où $a = 1, ..., 8$ les générateurs de $\mathfrak{su}(3)$

Et on dispose des champs suivants

| Nom | Type | Espace vectoriel | Représentation de jauge $H$| 
| :-: | :-: | :-: | :-: |
| Champs de Higgs | scalaire | $\mathbb{C}^2$ | $\rho(e^{i\alpha}, g, h) = e^{i\alpha Y}g$ | 
| Leptons gauche $\begin{pmatrix}\nu_{e} \\ e_L\end{pmatrix}$, $\begin{pmatrix}\nu_{\mu} \\ \mu_L\end{pmatrix}$ et $\begin{pmatrix}\nu_{\tau} \\ \tau_L\end{pmatrix}$ | Weyl gauche | $\mathbb{C}^2$ | $\rho(e^{i\alpha}, g, h) = e^{i\alpha Y}g$ |
| Lepton droit $e_R$, $\mu_R$, $\tau_R$ | Weyl droit | $\mathbb{C}^2$ | $\rho(e^{i\alpha}, g, h) = e^{i\alpha Y}$ | 
| Quarks gauche $\begin{pmatrix}u_L \\ d_L\end{pmatrix}$, $\begin{pmatrix}c_L \\ s_L\end{pmatrix}$ et $\begin{pmatrix}t_L \\ b_L\end{pmatrix}$ | Weyl gauche | $\mathbb{C}^2 \otimes \mathbb{C}^3$ | $\rho(e^{i\alpha}, g, h) = e^{i\alpha Y}g\otimes h$ |
| Quarks droit $\begin{pmatrix}u_R \\ d_R\end{pmatrix}$, $\begin{pmatrix}c_R \\ s_R\end{pmatrix}$ et $\begin{pmatrix}t_R \\ b_R\end{pmatrix}$ | Weyl droit | $\mathbb{C}^2\otimes \mathbb{C}^3$ | $\rho(e^{i\alpha}, g, h) = e^{i\alpha Y}\text{id}\otimes h$ |

Ainsi l'action totale du modèle standard est la somme des actions d'Einstein-Hilbert, de Yang-Mills, de Higgs, de Weyl gauche et droite, ainsi que de l'action de couplage de Yukawa entre les paires de Weyl et le champs de Higgs.

Après brisure de symétrie le groupe de jauge devient $K = U(1)_{\text{em}}\times SU(3)$. Ainsi on effectue le changement de base dans $\mathfrak{u}(1)\times \mathfrak{su}(2)\times \mathfrak{su}(3) $ qui diagonalise la matrice de masse $M_{ab}$ en posant
$$W_\mu^{\pm} = \frac{1}{\sqrt{2}}(W_\mu^1\mp iW_\mu^2) \quad Z_\mu = \cos\theta W_\mu^3 - \sin\theta B_\mu \quad A_\mu = \sin\theta W_\mu^3 + \cos\theta B_\mu$$
où $\theta$ est l'angle de Weinberg défini tel que 
$$\cos\theta = \frac{g_{SU(2)}}{\sqrt{g_{SU(2)}^2+g_{U(1)}^2}} \quad \sin\theta = \frac{g_{U(1)}}{\sqrt{g_{SU(2)}^2+g_{U(1)}^2}}$$
avec $g_{U(1)}$ et $g_{SU(2)}$ sont les constantes de couplage de Yang-Mills des groupes $U(1)$ et $SU(2)$ respectivement.

Les générateurs $A_\mu$ et $G_\mu^a$ engendrent $\mathfrak{k} = \mathfrak{u}(1)_{\text{em}}\times \mathfrak{su}(3)$ et restent sans masse tandis que $W_\mu^\pm$ et $Z_\mu$ acquièrent une masse 

Ainsi les paires de Weyl couplées par Yukawa acquière une masse $m = y\phi_0$ et deviennent des champs de Dirac.

| Nom | Type | Espace vectoriel | Représentation de jauge $K$| 
| :-: | :-: | :-: | :-: |
| Leptons $e$, $\mu$, $\tau$ | Dirac | $\mathbb{C}^4$ | $\rho(e^{i\alpha}, h) = e^{i\alpha Q}$ |
| Neutrinos $\nu_e$, $\nu_\mu$, $\nu_\tau$ | Weyl gauche | $\mathbb{C}^2$ | $\rho(e^{i\alpha}, h) = 1$ |
| Quarks u, d, c, s, t, b | Dirac | $\mathbb{C}^4 \otimes \mathbb{C}^3$ | $\rho(e^{i\alpha}, h) = e^{i\alpha Q}\otimes h$ |

De plus afin que la théorie respecte la symétrie $U(1)_\text{em}$, chaque champ de charge $Q$ doit être associé à un champs de charge $-Q$. Ainsi chaque paire de Weyl $(\psi_L, \psi_R)$ crée en réalité deux champs de Dirac 
$$\psi = \begin{pmatrix}\psi_L \\\psi_R\end{pmatrix} \quad \text{et} \quad \psi^c = \begin{pmatrix}\overline{\psi_R} \\\overline{\psi_L}\end{pmatrix}$$
de sorte que l'un soit le complexe conjugué de l'autre.
Aussi on dispose des antineutrinos qui sont des spineur de Weyl droit, complexe conjugué des neutrinos qu'on s'est donné. 

Enfin, on note que dans cette description classique, le champs de Higgs est une solution statique et homogène qui devient une donnée fixe qui paramétrise la brisure de symétrie. Les fluctuations autour de $\phi_0$ sont des objets quantiques hors du cadre classique qu'on s'est donné ici. 

