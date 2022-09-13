{-# LANGUAGE NoImplicitPrelude     #-}
{-# LANGUAGE DeriveGeneric         #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE RecordWildCards       #-}
{-# LANGUAGE NamedFieldPuns        #-}
{-# LANGUAGE StrictData            #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.Tag where

import Amazonka.S3.Internal
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A container of a key value name pair.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
    {
    -- | Name of the object key.
    key :: ObjectKey
    -- | Value of the tag.
    , value :: Prelude.Text
    } deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tag_key' - Name of the object key.
--
-- 'value', 'tag_value' - Value of the tag.
newTag
    :: ObjectKey -- ^ 'key'
    -> Prelude.Text -- ^ 'value'
    -> Tag
newTag pKey_ pValue_
  = Tag'{key = pKey_, value = pValue_}

-- | Name of the object key.
tag_key :: Lens.Lens' Tag ObjectKey
tag_key = Lens.lens (\ Tag'{key} -> key) (\ s@Tag'{} a -> s{key = a} :: Tag)

-- | Value of the tag.
tag_value :: Lens.Lens' Tag Prelude.Text
tag_value = Lens.lens (\ Tag'{value} -> value) (\ s@Tag'{} a -> s{value = a} :: Tag)

instance Core.FromXML Tag where
        parseXML x
          = Tag' Prelude.<$>
              (x Core..@ "Key") Prelude.<*> (x Core..@ "Value")

instance Prelude.Hashable Tag where
        hashWithSalt _salt Tag'{..}
          = _salt `Prelude.hashWithSalt` key
              `Prelude.hashWithSalt` value

instance Prelude.NFData Tag where
        rnf Tag'{..}
          = Prelude.rnf key `Prelude.seq` Prelude.rnf value

instance Core.ToXML Tag where
        toXML Tag'{..}
          = Prelude.mconcat
              ["Key" Core.@= key, "Value" Core.@= value]
