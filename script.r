# ==============================================================================
# TP ANAD : Script pour l'ACM (Analyse des Correspondances Multiples)
# ==============================================================================

# 1. Préparation des données pour l'ACM
# On sélectionne uniquement les variables qualitatives (colonnes 5 à 11)
vars_qualitatives <- data[, 5:11]

# 2. Exécution de l'ACM
res.mca <- MCA(vars_qualitatives, graph = FALSE)

# ==============================================================================
# GÉNÉRATION ET SAUVEGARDE DES GRAPHIQUES ACM
# ==============================================================================

# A. Éboulis des valeurs propres (Inertie de l'ACM)
png("8_ACM_Inertie.png", width = 800, height = 600)
print(fviz_eig(res.mca, addlabels = TRUE, main = "Inertie des dimensions - ACM"))
dev.off()

# B. Nuage des modalités (Le graphique le plus important)
# Il montre quelles catégories "vont ensemble"
png("9_ACM_Modalites.png", width = 1200, height = 900)
print(fviz_mca_var(res.mca, 
                   col.var = "cos2",
                   gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), 
                   repel = TRUE,
                   title = "Liaisons entre les modalités (Catégories)"))
dev.off()

# C. Nuage des individus coloré par une variable (ex: occupation)
png("10_ACM_Individus_Occupation.png", width = 1000, height = 800)
print(fviz_mca_ind(res.mca, 
                   label = "none", 
                   habillage = "occupation", 
                   addEllipses = TRUE,
                   title = "ACM - Individus selon leur métier"))
dev.off()

# D. Description des dimensions (Quelles modalités définissent l'Axe 1 et 2)
# On affiche les résultats dans la console pour votre rapport
cat("\n--- Description de la Dimension 1 (ACM) ---\n")
print(dimdesc(res.mca, axes = 1)$category)

cat("\n--- Description de la Dimension 2 (ACM) ---\n")
print(dimdesc(res.mca, axes = 2)$category)

# ==============================================================================
# FIN DU SCRIPT ACM
# ==============================================================================
cat("\nACM terminée ! Les graphiques 8, 9 et 10 sont dans votre dossier.\n")