// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2005-2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 1224 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=1224
//
// <-- Short Description -->
//    Product of 2x2 matrices produces wrong result.
//    inf=%inf;
//    A=diag([-inf,inf]);
//    A*A  //This is correct
//    A*A*A  //This is wrong

inf = %inf;
A   = diag([-inf,inf]);
B   = A*A*A;

if ~isnan(B) then pause,end
