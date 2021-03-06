#  File src/library/graphics/R/mtext.R
#  Part of the R package, https://www.R-project.org
#
#  Copyright (C) 1995-2012 The R Core Team
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  A copy of the GNU General Public License is available at
#  https://www.R-project.org/Licenses/

mtext <-
function (text, side = 3, line = 0, outer = FALSE, at = NA,
	  adj = NA, padj = NA, cex = NA, col = NA, font = NA, ...)
    invisible(.External.graphics(C_mtext, as.graphicsAnnot(text), side, line, outer,
                       at, adj, padj, cex, col, font, ...))

