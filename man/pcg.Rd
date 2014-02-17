\name{pcg}
\alias{pcg}
\title{Preconditioned Conjugate Gradient algorithm for solving Ax=b}
\description{The function solves linear system of equations Ax=b by Preconditioned Conjugate Gradient algorithm. Here matrix A must be real symmetric and positive definite. This can also be used to minimize the quadractic function (x'Ax)/2-bx.}
\usage{pcg(A, b, M, maxiter = 1e+05, tol = 1e-06)}
\arguments{
  \item{A}{A is real symmetric positive definite matrix of order n x n.}
  \item{b}{b is a vector of order n x 1.}
  \item{M}{Optionally a suitable preconditioner matrix specified by user}
  \item{maxiter}{Maximum number of iterations}
  \item{tol}{Tolerance for convergence of the solution}
}
\value{A vector of order n x 1}
\references{Barrett, R., M. Berry, T. F. Chan, et al., (1994). Templates for the Solution of Linear Systems: Building Blocks for Iterative Methods, SIAM, Philadelphia.}
\author{B N Mandal and Jun Ma}
\note{The algorithm does not check for symmetricity and positive definiteness of matrix A. Please ensure these conditions yourself.}
\examples{
A=matrix(rnorm(100*100,mean=10,sd=2),100,100)
A=t(A)\%*\%A
b=rnorm(100)
pcg(A,b)
}
\keyword{preconditioned conjugate gradient}
\keyword{linear system of equations}
\keyword{quadratic function}
