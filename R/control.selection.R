#' @title Controll the variable selection process
#' @description Used to set various parameters controlling the variable
#'  selection process.
#' @param disc.method a character string selecting the discretization method
#'  to be used, meaningful only for variable selection methods which can not
#'  handle numerical variables; the available options are 6 supervised
#'  methods: "chi2" (using Chi2 algorithm: Liu and Setiono (1997)),
#'  "chiM" (using  ChiMerge algorithm: Kerber (1992)),
#'  "disc.Topdown" (using Top-down method: Gonzalez-Abril and et al. (2009)),
#'  "extendChi2" (using the Extended Chi2 algorithm: Su and Hsu (2005)),
#'  "mdlp" (using Minimum Description Length Principle: Fayyad and Irani (1993)),
#'  "modChi2" (using Modified Chi2 method: Tay and Shen (2002))
#'  and 2 unsupervised methods:
#'  "EB" (using Equal Binning method),
#'  "EF" (using Equal Frequency method)
#'  The default is "mdlp".
#' @param bins a positive integer meaningful only in the "EB" and
#' "EF" discretization method. It specifies the number of bins.
#' The default is 5.
#' @param ranker.search a character vector selecting the methods to search and
#' transform the ranking of variables to a subset of variables used in ranker
#' variable selection methods:
#' "BR" (Best Rank search which selectes a subset of the highest ranked variables among all possible subsets of highest ranked variables);
#' "FR" (Fixed Rank search which selectes a fixed number of highest ranked variables);
#'  The default is "BR".
#' @param ranker.k a positive integer meaningful only in FR indicating the number of variables to be selected.
#' Default is 20.
#' @param ranker.p  a numeric between 0 and 1 meaningful only in PR indicating the percent of variables to be selected.
#' The default is 50.
#' @param subset.search a character vector selecting the search method used in
#' subset selector variable selection methods: "SF" (Sequential Forward search);
#' "SB" (Sequential Backward search); "HC" (Hill Climbing search); "BF" (Best First Search) (Dash and Liu (1997)).
#' DThe default is "BF".
#' @param search.backtracks number of backtracks when applying a best first search (Dash and Liu (1997)).
#' @param model a character string selecting the prediction model for which the variables are selected;
#' currently the only available option is "logistic".
#' The default is "logistic".
#' @param model.evaluation a character string selecting the model evaluation measure; currently the only available option is "aic" (Akaike Information Criterion).
#' The default is "aic".
#' @param consistency.measure a character vector selecting the measure used for
#'  consistency; currently the only available option is "Liu" (Arauzo-Azofra and et al. (2008)). The default is "Liu".
#' @param correlation.measure a character vector selecting the measure used for
#'  correlation; currently the available options are "Chi2" (Chi-squared statistic) and "CramerV" (Harald Cramer (1946)).
#'  The default is "Chi2".
#' @param information.measure a character vector selecting the measure used for
#'  information; currently the available options are "IG" (Information Gain); "GR" (Gain Ratio) and "SU" (Symmetrical Uncertainty) (Novakovic (2011)).
#'   The default is "SU".
#' @param CFS.measure a character vector selecting the dependency measure
#' used in CFS. Options are "IG", "GR", "SU", "Chi2" and "CramerV" (Ladha and Deepa (2011)).
#'   The default is "SU".
#' @param OneR.measure  character vector selecting the OneR tree evaluation criterion (Jensen and Shen (2009)).
#'   The default is "acc" (accuracy).
#'  @param RF.measure a character vector specifying the type of importance
#'  measure used in random forest. Options are "acc" (Accuracy) and "imp" (Impurity) (Livingston (2005)).
#'   The default is "acc".
#' @param RF.ntree an integer meaningful only in random forest method to set the
#' number of trees.
#'   The default is 1000.
#' @param Relief.nneighbour an integer meaningful only in Relief to set
#' the number of neighbours to find for every sampled instance (Cehovin (2010)).
#'   The default is 5.
#' @param Relief.nsample an integer meaningful only in Relief to set
#' number of instances to sample (Cehovin (2010)).
#'   The default is 10.
#'  @references
#'  Liu, H. and Setiono, R. (1997). Feature selection and discretization, \emph{IEEE  transactions on knowledge and data engineering}, \bold{9}(4), 642--645.
#'
#'  Kerber, R. (1992). ChiMerge : Discretization of numeric attributes, \emph{ In Proceedings of the Tenth National Conference on Artificial Intelligence}, 123--128.
#'
#'  Gonzalez-Abril, L., Cuberos, F. J., Velasco, F. and Ortega, J. A. (2009) Ameva: An autonomous discretization algorithm, \emph{Expert Systems with Applications}, \bold{36}, 5327--5332.
#'
#'  Su, C. T. and Hsu, J. H. (2005). An Extended Chi2 Algorithm for Discretization of  Real Value Attributes, \emph{IEEE transactions on knowledge and data engineering}, \bold{17}, 437--441.
#'
#'  Fayyad, U. M. and Irani, K. B.(1993). Multi-interval discretization of continuous-valued attributes for classification learning, \emph{Artificial intelligence}, \bold{13}, 1022--1027.
#'
#'  Tay, F. E. H. and Shen, L. (2002). Modified Chi2 Algorithm for Discretization, \emph{IEEE  Transactions on knowledge and data engineering}, \bold{14}, 666--670.
#'
#'  Dash, M. and H. Liu (1997). Feature selection for classification. \emph{Intelligent Data Analysis}, \bold{1}(30), 131--156.
#'
#'  Arauzo-Azofra,  A.,  J.M.  Benitez,  and  J.L.  Castro. Consistency  measures  for  feature  selection (2008). \emph{Journal of Intelligent Information Systems}, \bold{30}(3), 273--292.
#'
#'  Cramer, H. (1946). Mathematical Methods of Statistics. Press, Princeton, NJ, 367--369
#'
#'  Novakovic, J., Strbac, P., & Bulatovic, D. (2011). Toward optimal feature selection using ranking methods and classification algorithms.  \emph{Yugoslav Journal of Operations Research} ISSN: 0354-0243 EISSN: 2334-6043, \bold{21}(1).
#'
#'  Ladha,  L.  and  T.  Deepa (2011).  Feature  selection  methods  and  algorithms.  \emph{International  Journal  on  Computer Science and Engineering}, \bold{3}(5), 1787--1797.
#'
#'  Jensen, R. and Q. Shen (2009). Feature selection for aiding glass forensic evidence analysis. \emph{Intelligent Data Analysis}, \bold{13}(5), 703--723.
#'
#'  ???Livingston, F., Implementation of Breiman`s random forest machine learning algorithm. ECE591Q  Machine Learning Journal Paper, 2005.
#'
#'  ???Cehovin,  L.,  Empirical  evaluation  of  feature  selection  methods  in  classification. 2010.
#'
#' @return A list with components for each of the possible arguments.
#' @seealso \code{\link{variable.selection}}
#'  @examples
#'  library(VariableSelection)
#'  data(tlgs)
#'
#'  ###########################################
#'  # Variable Selection with "wrapper" method:
#'  object <- variable.selection (input=names(tlgs)[-1],
#'  target=names(tlgs)[1], data=tlgs, methods=c("wrapper"),
#'  control = control.selection())

#'  print(object)
#'
#'  ###########################################
#'  # Variable Selection with "wrapper" method:
#'  # Change the Search Method used in Variable Selection through parameters of control.selection
#'  object <- variable.selection (input=names(tlgs)[-1],
#'  target=names(tlgs)[1], data=tlgs,
#'  methods=c("wrapper"), control = control.selection(subset.search="HC" ))
#'
#'  print(object)
#'
#' @author Farideh Bagherzadeh-Khiabani.
#' @export
control.selection <- function(disc.method = "mdlp",
                              bins = 5,
                              ranker.search = "BR",
                              ranker.k = 20,
                              ranker.p = 50,
                              subset.search = "BF",
                              search.backtracks = 5,
                              model = "logistic",
                              model.evaluation = "aic",
                              consistency.measure = "Liu",
                              correlation.measure = "Chi2",
                              information.measure = "SU",
                              CFS.measure = "SU",
                              OneR.measure = "acc",
                              RF.measure = "acc",
                              RF.ntree = 1000,
                              Relief.nneighbour = 5,
                              Relief.nsample = 10) {
    list(disc.method = disc.method,
         bins = bins,
         ranker.search = ranker.search,
         ranker.k = ranker.k,
         ranker.p = ranker.p,
         subset.search = subset.search,
         search.backtracks = search.backtracks,
         model = model,
         model.evaluation = model.evaluation,
         consistency.measure = consistency.measure,
         correlation.measure = correlation.measure,
         information.measure = information.measure,
         CFS.measure = CFS.measure,
         OneR.measure = OneR.measure,
         RF.measure = RF.measure,
         RF.ntree = RF.ntree,
         Relief.nneighbour = Relief.nneighbour,
         Relief.nsample = Relief.nsample)
}
