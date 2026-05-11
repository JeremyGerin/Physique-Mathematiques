# Surfaces et formes fondamentales 

Peut-on reconstruire une surface à partir de ses formes fondamentales ? 

Oui d'après le théorème de Bonnet, à isométrie directe près et sous les conditions de compatibilités de Gauss-Codazzi.

## Surfaces paramétrées

### Définition

Soit $U\subset \mathbb{R}^2$ un ouvert. Une *surface paramétrée* $\Sigma$ est la donnée d'une application lisse 
$$\varphi: U \to  \mathbb{R}^3, \quad (u, v) \mapsto \varphi(u,v)$$
et tel qu'en tout point $p\in U$ la différentielle $d\varphi_p$ est injective, autrement dit telle que les vecteurs $\partial_u\varphi(p)$ et $\partial_v\varphi(p)$ soient linéairement indépendants.

### Plan tangent

En un point $p\in U$, le *plan tangent* à la surface $\Sigma$ en $\varphi(p)$ est l'espace vectoriel
$$T_p\Sigma = \text{Im}(d\varphi_p) = \text{Vect}(\partial_u\varphi(p), \partial_v\varphi(p))$$

### Normale unitaire 

En un point $p\in U$, le *vecteur normal unitaire* est défini par 
$$\eta(p) = \frac{\partial_u\varphi(p) \wedge \partial_v\varphi(p)}{\lVert \partial_u\varphi(p) \wedge \partial_v\varphi(p) \rVert}$$
qui par construction est orthogonal à $T_p\Sigma$.

On appelle *application de Gauss* l'application $\eta: U \to \mathbb{S}^2$ définie ci-dessus.

### Première forme fondamentale

En un point $p\in U$, le produit scalaire euclidien ambiant de $\mathbb{R}^3$ induit par restriction au plan tangent $T_p\Sigma$ une forme bilinéaire $I_p : T_p\Sigma\times T_p\Sigma \to \mathbb{R}$ symétrique et définie positive (i.e. un produit scalaire sur le plan tangent) : c'est la *première forme fondamentale*. Autrement dit en coordonnées $(u, v)$ elle est définie par une matrice de Gram
$$I_p = \begin{pmatrix}
E_p & F_p \\
F_p & G_p
\end{pmatrix}$$
où 
$$E_p = \lVert \partial_u\varphi(p)\rVert^2 \qquad F_p = \langle \partial_u\varphi(p), \partial_v\varphi(p)\rangle \qquad G_p = \lVert \partial_v\varphi(p)\rVert^2$$

On a $E_pG_p - F_p^2 = \lVert \partial_u\varphi(p) \wedge \partial_v\varphi(p) \rVert^2$ donc $E_pG_p - F_p^2 > 0$.

### Deuxième forme fondamentale 

Dans ce qui suit on note $\alpha, \beta\in \{u, v\}$ afin de ne pas répéter les calculs qui sont identique à changement d'indice près.

En un point $p\in U$. On a, à priori $d\eta_p : \mathbb{R}^2 \to T_{\eta(p)}\mathbb{S}^2$ or puisque $T_{\eta(p)}\mathbb{S}^2 = \eta(p)^\perp = T_p\Sigma$ donc on a $d\eta_p : \mathbb{R}^2 \to T_p\Sigma$. Ainsi pour deux vecteur tangent $X, Y\in T_p\Sigma$ on définie la *deuxième forme fondamentale* par 
$$II_p(X, Y) = - \langle d\eta_p \circ (d\varphi_p)^{-1}(X), Y\rangle$$
Or on a en coordonnées $(u, v)$
$$II_p(\partial_\alpha\varphi(p), \partial_\beta\varphi(p)) = - \langle d\eta_p \circ (d\varphi_p)^{-1}(\partial_\alpha\varphi(p)), \partial_\beta\varphi(p)\rangle = - \langle \partial_\alpha\eta(p), \partial_\beta\varphi(p) \rangle$$
Ainsi en différentiant la relation $\langle \eta, \partial_\beta\varphi\rangle = 0$ par rapport à $\alpha$ et en évaluant en $p$. On obtient 
$$II_p(\partial_\alpha\varphi(p), \partial_\beta\varphi(p)) = \langle \eta(p), \partial_\alpha\partial_\beta\varphi(p)\rangle$$
Ainsi, en coordonnées $(u,v)$ la deuxième forme fondamentale est définie par une matrice symétrique
$$II_p = \begin{pmatrix}
\ell_p & m_p \\
m_p & n_p
\end{pmatrix}$$
où 
$$\ell_p = \langle \eta(p), \partial_u^2\varphi(p)\rangle \qquad m_p = \langle \eta(p), \partial_u\partial_v\varphi(p)\rangle \qquad n_p = \langle \eta(p), \partial_v^2\varphi(p)\rangle$$

### Symboles de Christoffel

On cherche à exprimer les composante des vecteurs $\partial_\alpha\partial_\beta\varphi$ dans la base $(\partial_u\varphi, \partial_v\varphi, \eta)$. Ainsi on définit les *symboles de Christoffel* $\Gamma_{\alpha\beta}^\gamma$ et les coefficients $h_{\alpha\beta}$ de sorte que 
$$\partial_\alpha\partial_\beta\varphi = \sum_\gamma \Gamma_{\alpha\beta}^\gamma\partial_\gamma\varphi + h_{\alpha\beta}\eta$$
On a déjà montré que $h_{\alpha\beta}$ sont les coefficients de la deuxième forme fondamentale, il reste à calculer les symboles de Christoffel.

On a $$\langle \partial_\alpha\partial_\beta\varphi, \partial_\delta\varphi\rangle = \sum_\gamma \Gamma_{\alpha\beta}^\gamma \langle\partial_\gamma\varphi, \partial_\delta\varphi\rangle$$
Ainsi si on note 
$$I^{-1} = \begin{pmatrix}
E & F \\
F & G
\end{pmatrix}^{-1} = \frac{1}{EG-F^2}\begin{pmatrix}
G & -F \\
-F & E
\end{pmatrix}$$
On a 
$$\Gamma_{\alpha\beta}^\gamma = \sum_\delta(I^{-1})^\gamma_\delta \langle \partial_\alpha\partial_\beta\varphi, \partial_\delta\varphi\rangle$$
Or en appliquant $\partial_\alpha$ aux coefficients de la première forme fondamentale on a
$$\partial_\alpha I_{\beta\delta} = \langle \partial_\alpha\partial_\beta\varphi, \partial_\delta\varphi\rangle + \langle \partial_\beta\varphi, \partial_\alpha\partial_\delta\varphi\rangle$$
Ensuite on écrit les trois permutations circulaire de $(\alpha, \beta, \delta)$ et on a aussi 
$$\partial_\beta I_{\delta\alpha} = \langle \partial_\beta\partial_\delta\varphi, \partial_\alpha\varphi\rangle + \langle \partial_\delta\varphi, \partial_\beta\partial_\alpha\varphi\rangle$$
$$\partial_\delta I_{\alpha\beta} = \langle \partial_\delta\partial_\alpha\varphi, \partial_\beta\varphi\rangle + \langle \partial_\alpha\varphi, \partial_\delta\partial_\beta\varphi\rangle$$
Ainsi
$$\langle \partial_\alpha\partial_\beta\varphi, \partial_\delta\varphi\rangle = \frac{1}{2}(\partial_\alpha I_{\beta\delta} + \partial_\beta I_{\delta\alpha} - \partial_\delta I_{\alpha\beta})$$
Et finalement on obtient 
$$\Gamma_{\alpha\beta}^\gamma = \sum_\delta \frac{(I^{-1})^\gamma_\delta}{2}(\partial_\alpha I_{\beta\delta} + \partial_\beta I_{\delta\alpha} - \partial_\delta I_{\alpha\beta})$$
Ainsi les symboles de Christoffel ne dépendent que des coefficients de la première forme fondamentale et de ses dérivées.

### Opérateur de Weingarten

De même on cherche à décomposer le vecteur $\partial_\alpha \eta$. Or puisque $\eta$ est à valeur dans $\mathbb{S}^2$ on a $\partial_\alpha\eta(p) \perp \eta(p)$. Ainsi on sait que $\partial_\alpha \eta(p) \in T_p\Sigma$ et on peut écrire 
$$\partial_\alpha\eta = \sum_\gamma A^\gamma_\alpha \partial_\gamma\varphi$$
En prennant le produit scalaire avec $\partial_\delta\varphi$ on a
$$\langle \partial_\alpha \eta, \partial_\delta\varphi \rangle = \sum_\gamma A^\gamma_\alpha I_{\gamma\delta}$$
et puisque $\langle \partial_\alpha \eta, \partial_\delta\varphi \rangle = -h_{\alpha\delta}$ on a 
$$A^\gamma_\alpha = -\sum_\delta (I^{-1})^\gamma_\delta h_{\alpha\delta}$$
Ce qui s'écrit aussi $A = -I^{-1}\cdot II$ et qui s'appelle l'*opérateur de Weingarten*

### Système de Gauss-Weingarten

Pour résumer jusque là, on a montré que la base $(\partial_u\varphi, \partial_v\varphi, \eta)$ vérifiait le système d'EDP du premier ordre d'inconnues $(e_u, e_v, \eta)$ 
$$\partial_\alpha e_\beta = \sum_\gamma \Gamma_{\alpha\beta}^\gamma e_\gamma + h_{\alpha\beta} \cdot \eta$$
$$\partial_\alpha \eta = \sum_\gamma A^\gamma_\alpha \cdot e_\gamma$$
où $\Gamma_{\alpha\beta}^\gamma$, $h_{\alpha\beta}$ et $A^\gamma_\alpha$ ne dépendent que des composantes des formes fondamentales ou de leur dérivées.

De plus, en calculant $\partial_u(\partial_v e_\beta)$ et en utilisant les équations du sytème on a 
$$\partial_u(\partial_v e_\beta) = \partial_u \left(\sum_\gamma \Gamma_{v\beta}^\gamma e_\gamma + h_{v\beta} \cdot \eta \right) = \sum_\gamma \partial_u(\Gamma_{v\beta}^\gamma)e_\gamma + \sum_\gamma \Gamma_{v\beta}^\gamma \partial_u e_\gamma + \partial_u(h_{v\beta})\eta + h_{v\beta}\partial_u\eta$$
puis en substituant $\partial_u e_\gamma$ et $\partial_u \eta$, on a
$$\partial_u(\partial_v e_\beta) = \sum_\gamma \left(\partial_u \Gamma_{v\beta}^\gamma + \sum_\delta \Gamma_{v\beta}^\delta \Gamma_{u\delta}^\gamma + h_{v\beta}A^\gamma_u \right)e_\gamma + \left( \partial_u h_{v\beta} + \sum_\gamma \Gamma_{v\beta}^\gamma h_{u\gamma} \right)\eta$$
et de même en échangeant $u$ et $v$, on a 
$$\partial_v(\partial_u e_\beta) = \sum_\gamma \left(\partial_v \Gamma_{u\beta}^\gamma + \sum_\delta \Gamma_{u\beta}^\delta \Gamma_{v\delta}^\gamma + h_{u\beta}A^\gamma_v \right)e_\gamma + \left( \partial_v h_{u\beta} + \sum_\gamma \Gamma_{u\beta}^\gamma h_{v\gamma} \right)\eta$$
Ainsi puisque $\partial_u(\partial_v e_\beta) = \partial_v(\partial_u e_\beta)$ et puisque $(e_u, e_v, \eta)$ est une base de $\mathbb{R}^3$, on identifie composante par composante et on obtient : 
- les équations de Gauss (composante $e_\gamma$)
$$\partial_u \Gamma_{v\beta}^\gamma - \partial_v \Gamma_{u\beta}^\gamma + \sum_\delta(\Gamma_{v\beta}^\delta \Gamma_{u\delta}^\gamma - \Gamma_{u\beta}^\delta \Gamma_{v\delta}^\gamma) = h_{u\beta} A^\gamma_v - h_{v\beta}A^\gamma_u$$
- les équations de Codazzi-Mainardi (composante sur $\eta$)
$$\partial_u h_{v\beta} - \partial_v h_{u\beta} + \sum_\gamma(\Gamma_{v\beta}^\gamma h_{u\gamma}- \Gamma_{u\beta}^\gamma h_{v\gamma}) = 0$$
On souligne que la condition $\partial_u(\partial_v \eta) = \partial_v(\partial_u \eta)$ ne donne pas d'équations supplémentaires. 

## Théorème de Bonnet 

Soit $U\subset \mathbb{R}^2$ un ouvert connexe et simplement connexe. Soient $I$ et $II$ deux formes bilinéaires symétriques sur $U$, avec $I$ définie positive et dont les coefficients vérifient les équations de Gauss et de Codazzi-Mainardi. Alors il existe une surface paramétrée $\varphi: U \to \mathbb{R}^3$, unique à isométrie directe affine près et dont $I$ et $II$ sont respectivement les premières et deuxièmes formes fondamentales.