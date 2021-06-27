#-----------------------------------------------------------------------------------------------------------------


#                                     Kore and Katka - South Africa Herbivory Data

# South.Africa.data <- read.csv("~/South Africa data.csv")
# View(South.Africa.data)
# install.packages("corrplot")

# head(South.Africa.data)
# Species     Code Root.sucker Bud_protection Bud_accessory    BarkGR   WoodGR Evergreen Spiny BiteSizeIndex SpineType
# 1        Acacia_burkei ACA_BUR            0              3             1 0.6290067 2.223274         0     1         0.349      Hook
# 2        Acacia_caffra  ACA_CAF           0              3             1 0.8477778 5.011944         0     1         1.542      Hook
# 3     Acacia_gerrardii  ACA_GER           0              3             1 0.5985354 2.140859         0     1         0.382     Spine
# 4 Acacia_grandicornuta  ACA_GRA           0              1             1 0.2112963 3.155093         0     1         0.197     Spine
# 5        Acacia_karroo  ACA_KAR           0              3             1 1.1357937 3.286071         0     1         0.545     Spine
# 6    Acacia_nigrescens  ACA_NIG           0              3             1 0.2789291 1.545564         0     1         0.408      Hook
# Height5 Max_Height     C     N P_Elsenburg N_UCT N_Elsenburg CN_ratio CT.percentage LDMC_leaf       SLA   NormanI FreshW
# 1 1.0000000         30 47.57 2.415        0.14  2.52        2.31    18.85     5.7885313 0.3669565 12.224724 11.595734 0.5750
# 2 2.0000000          8 49.14 2.980        0.16  3.13        2.83    15.68     3.3823373 0.3959268 11.982043 16.188831 1.4927
# 3 2.0000000          8 47.14 2.530        0.17  2.80        2.26    16.83     1.3133070 0.4040632 10.313663 14.523346 0.4430
# 4 1.0000000         10 47.28 2.750        0.17  2.89        2.61    16.37     0.3396322 0.4528986  8.717573 16.330184 0.2760
# 5 0.8333333         15 48.52 2.125        0.12  2.16        2.09    22.47     6.0353311 0.3704225 10.072037  9.732334 1.4200
# 6 2.6666667         20 44.33 2.410        0.15  2.50        2.32    17.71     4.2256307 0.4442568  9.529784 12.347185 0.5920
# Wood_density LeafArea                Name..checked.   Family total_perc_mean chewing_perc_mean mining_perc_mean
# 1       0.9000   2.5400          Acacia burkei Benth. Fabaceae        1.935607         1.3204041        0.6152028
# 2       0.9800   6.9752 Acacia caffra (Thunb.) Willd. Fabaceae        1.030391         0.3399393        0.6904517
# 3       0.7749   1.8453       Acacia gerrardii Benth. Fabaceae        5.172257         0.0000000        5.1722565
# 4       0.9110   1.1324 Acacia grandicornuta Gerstner Fabaceae        1.705803         0.5107630        1.1950403
# 5       0.6888   5.2273           Acacia karroo Hayne Fabaceae        3.675413         3.5469473        0.1284659
# 6       1.1000   2.4696       Acacia nigrescens Oliv. Fabaceae        3.246201         2.3010266        0.9451749
#
#--------
# str(South.Africa.data)
#--------

# 'data.frame':	48 obs. of  31 variables:
# $ Species          : chr  "Acacia_burkei" "Acacia_caffra" "Acacia_gerrardii" "Acacia_grandicornuta" ...
# $ Code             : chr  "ACA_BUR " "ACA_CAF" "ACA_GER" "ACA_GRA" ...
# $ Root.sucker      : int  0 0 0 0 0 0 0 0 0 0 ...
# $ Bud_protection   : int  3 3 3 1 3 3 3 1 1 0 ...
# $ Bud_accessory    : int  1 1 1 1 1 1 1 1 1 0 ...
# $ BarkGR           : num  0.629 0.848 0.599 0.211 1.136 ...
# $ WoodGR           : num  2.22 5.01 2.14 3.16 3.29 ...
# $ Evergreen        : int  0 0 0 0 0 0 0 0 1 1 ...
# $ Spiny            : int  1 1 1 1 1 1 1 1 0 0 ...
# $ BiteSizeIndex    : num  0.349 1.542 0.382 0.197 0.545 ...
# $ SpineType        : chr  "Hook" "Hook" "Spine" "Spine" ...
# $ Height5          : num  1 2 2 1 0.833 ...
# $ Max_Height       : int  30 8 8 10 15 20 10 8 10 10 ...
# $ C                : num  47.6 49.1 47.1 47.3 48.5 ...
# $ N                : num  2.42 2.98 2.53 2.75 2.12 ...
# $ P_Elsenburg      : num  0.14 0.16 0.17 0.17 0.12 0.15 0.19 0.21 0.15 0.15 ...
# $ N_UCT            : num  2.52 3.13 2.8 2.89 2.16 2.5 2.79 2.75 2.83 1.83 ...
# $ N_Elsenburg      : num  2.31 2.83 2.26 2.61 2.09 2.32 2.51 2.58 1.75 2.56 ...
# $ CN_ratio         : num  18.9 15.7 16.8 16.4 22.5 ...
# $ CT.percentage    : num  5.79 3.38 1.31 0.34 6.04 ...
# $ LDMC_leaf        : num  0.367 0.396 0.404 0.453 0.37 ...
# $ SLA              : num  12.22 11.98 10.31 8.72 10.07 ...
# $ NormanI          : num  11.6 16.19 14.52 16.33 9.73 ...
# $ FreshW           : num  0.575 1.493 0.443 0.276 1.42 ...
# $ Wood_density     : num  0.9 0.98 0.775 0.911 0.689 ...
# $ LeafArea         : num  2.54 6.98 1.85 1.13 5.23 ...
# Name..checked.   : chr  "Acacia burkei Benth." "Acacia caffra (Thunb.) Willd." "Acacia gerrardii Benth." "Acacia grandicornuta Gerstner" ...
# $ Family           : chr  "Fabaceae" "Fabaceae" "Fabaceae" "Fabaceae" ...
# $ total_perc_mean  : num  1.94 1.03 5.17 1.71 3.68 ...
# $ chewing_perc_mean: num  1.32 0.34 0 0.511 3.547 ...
# $ mining_perc_mean : num  0.615 0.69 5.172 1.195 0.128 ...
# SA <- South.Africa.data[-c(1:9, 11:13, 15, 17, 20, 23, 25, 27:31)]
# > View(SA)
# head(SA)
#        BiteSizeIndex     C P_Elsenburg N_Elsenburg CN_ratio LDMC_leaf       SLA FreshW LeafArea
# 1         0.349 47.57        0.14        2.31    18.85 0.3669565 12.224724 0.5750   2.5400
# 2         1.542 49.14        0.16        2.83    15.68 0.3959268 11.982043 1.4927   6.9752
# 3         0.382 47.14        0.17        2.26    16.83 0.4040632 10.313663 0.4430   1.8453
# 4         0.197 47.28        0.17        2.61    16.37 0.4528986  8.717573 0.2760   1.1324
# 5         0.545 48.52        0.12        2.09    22.47 0.3704225 10.072037 1.4200   5.2273
# 6         0.408 44.33        0.15        2.32    17.71 0.4442568  9.529784 0.5920   2.4696
#  tail(SA)
# BiteSizeIndex     C P_Elsenburg N_Elsenburg CN_ratio LDMC_leaf       SLA FreshW LeafArea
# 43         2.751 45.76        0.12        1.99    21.13 0.3476562  8.661987  0.768   2.1073
# 44         0.580 42.34        0.26        1.56    25.06 0.4845361 12.598833  0.097   0.5884
# 45         0.864 45.34        0.20        2.14    20.09 0.3312500 16.153706  0.160   0.8621
# 46         2.557 43.84        0.17        2.33    16.93 0.2222864 16.741183  1.732   5.9958
# 47         0.471 41.64        0.15        1.92    19.23 0.3044280 13.174307  0.542   2.1572
# 48         0.422 42.85        0.20        2.40    16.41 0.2740741 17.785310  0.270   1.2800

#--------------------------------------------
# USING STRUCtURE () FUNCTION, TO SEE THE STRUCTURE OF THE DATA: = str(SA)
#--------------------------------------------
#
#
#
#-------------------------------------------------------------------------------------------
# SCALE THE DATA TO STANDARD IT BY USING THE SCALE () FUNCTION = SA.scaled <- scale(SA)

#SA.scaled <- scale(SA)
#-------------------------------------------------------------------------------------------


    # Using head () to view the data: = head(SA.scaled)

# BiteSizeIndex           C P_Elsenburg N_Elsenburg   CN_ratio LDMC_leaf        SLA     FreshW   LeafArea
# -0.9243765  1.06047061  -0.3563109   0.6605300 -0.4410273 0.1588904 -0.1785984 -0.2017317 -0.1144029
# 0.4655743  1.59453279   0.1254616   1.7745050 -0.9486808 0.5705540 -0.2299295  0.7655687  1.1854624
# -0.8859286  0.91419880   0.3663478   0.5534171 -0.7645163 0.6861704 -0.5828205 -0.3408662 -0.3180051
# -1.1014700  0.96182218   0.3663478   1.3032079 -0.8381821 1.3801128 -0.9204209 -0.5168923 -0.5269413
# -0.6960191  1.38362925  -0.8380834   0.1892329  0.1386906 0.2081419 -0.6339285  0.6889394  0.6731891
# -0.8556363 -0.04167046  -0.1154247   0.6819526 -0.6235904 1.2573143 -0.7486243 -0.1838129 -0.1350357
# SAclean <- SA.scaled
# head(SAclean)

#-----------
# Install the corrplot package for correlation matrix analysis
#----------
# 
#----
# Unzip from the library cor()package. This will show the tabulated matrices for correlation of traits assessed: = cor(SAclean)
#---- 
#
# 
#-------------------------------------------------------------------------------------------------------------------------
# library("corrplot"). THis will load the corrplot formulae
#----------------------------------------------------------
#
# corrplot(cor(SAclean), method = "circle")
# corrplot(cor(SAclean), method = "number")
#-------------------------------------------------------------------------------------------------------------------------