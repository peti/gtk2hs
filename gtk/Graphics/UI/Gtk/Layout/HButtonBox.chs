-- -*-haskell-*-
--  GIMP Toolkit (GTK) Widget HButtonBox
--
--  Author : Matthew Walton
--          
--  Created: 29 April 2004
--
--  Version $Revision: 1.1 $ from $Date: 2005/01/08 15:23:11 $
--
--  Copyright (c) 2004 Matthew Walton
--
--  This file is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This file is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
-- |
--

module Graphics.UI.Gtk.Layout.HButtonBox (
  HButtonBox,
  HButtonBoxClass,
  castToHButtonBox,
  hButtonBoxNew
  ) where

import Monad (liftM)

import System.Glib.FFI
import Graphics.UI.Gtk.Abstract.Object (makeNewObject)
{#import Graphics.UI.Gtk.Types#}
{#import Graphics.UI.Gtk.Signals#}

{# context lib="gtk" prefix="gtk" #}

--methods

-- | 
--
hButtonBoxNew :: IO HButtonBox
hButtonBoxNew = makeNewObject mkHButtonBox $
  liftM castPtr {#call unsafe hbutton_box_new#}

