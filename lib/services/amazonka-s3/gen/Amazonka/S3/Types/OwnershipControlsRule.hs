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
-- Module      : Amazonka.S3.Types.OwnershipControlsRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.OwnershipControlsRule where

import Amazonka.S3.Internal
import Amazonka.S3.Types.ObjectOwnership
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The container element for an ownership control rule.
--
-- /See:/ 'newOwnershipControlsRule' smart constructor.
data OwnershipControlsRule = OwnershipControlsRule'
    {
    objectOwnership :: ObjectOwnership
    } deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OwnershipControlsRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'objectOwnership', 'ownershipControlsRule_objectOwnership' - Undocumented member.
newOwnershipControlsRule
    :: ObjectOwnership -- ^ 'objectOwnership'
    -> OwnershipControlsRule
newOwnershipControlsRule pObjectOwnership_
  = OwnershipControlsRule'{objectOwnership =
                             pObjectOwnership_}

-- | Undocumented member.
ownershipControlsRule_objectOwnership :: Lens.Lens' OwnershipControlsRule ObjectOwnership
ownershipControlsRule_objectOwnership = Lens.lens (\ OwnershipControlsRule'{objectOwnership} -> objectOwnership) (\ s@OwnershipControlsRule'{} a -> s{objectOwnership = a} :: OwnershipControlsRule)

instance Core.FromXML OwnershipControlsRule where
        parseXML x
          = OwnershipControlsRule' Prelude.<$>
              (x Core..@ "ObjectOwnership")

instance Prelude.Hashable OwnershipControlsRule where
        hashWithSalt _salt OwnershipControlsRule'{..}
          = _salt `Prelude.hashWithSalt` objectOwnership

instance Prelude.NFData OwnershipControlsRule where
        rnf OwnershipControlsRule'{..}
          = Prelude.rnf objectOwnership

instance Core.ToXML OwnershipControlsRule where
        toXML OwnershipControlsRule'{..}
          = Prelude.mconcat
              ["ObjectOwnership" Core.@= objectOwnership]
