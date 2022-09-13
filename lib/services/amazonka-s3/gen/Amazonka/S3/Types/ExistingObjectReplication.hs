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
-- Module      : Amazonka.S3.Types.ExistingObjectReplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.ExistingObjectReplication where

import Amazonka.S3.Internal
import Amazonka.S3.Types.ExistingObjectReplicationStatus
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Optional configuration to replicate existing source bucket objects. For
-- more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-what-is-isnot-replicated.html#existing-object-replication Replicating Existing Objects>
-- in the /Amazon S3 User Guide/.
--
-- /See:/ 'newExistingObjectReplication' smart constructor.
data ExistingObjectReplication = ExistingObjectReplication'
    {
    status :: ExistingObjectReplicationStatus
    } deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExistingObjectReplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'existingObjectReplication_status' - 
newExistingObjectReplication
    :: ExistingObjectReplicationStatus -- ^ 'status'
    -> ExistingObjectReplication
newExistingObjectReplication pStatus_
  = ExistingObjectReplication'{status = pStatus_}

-- | 
existingObjectReplication_status :: Lens.Lens' ExistingObjectReplication ExistingObjectReplicationStatus
existingObjectReplication_status = Lens.lens (\ ExistingObjectReplication'{status} -> status) (\ s@ExistingObjectReplication'{} a -> s{status = a} :: ExistingObjectReplication)

instance Core.FromXML ExistingObjectReplication where
        parseXML x
          = ExistingObjectReplication' Prelude.<$>
              (x Core..@ "Status")

instance Prelude.Hashable ExistingObjectReplication
         where
        hashWithSalt _salt ExistingObjectReplication'{..}
          = _salt `Prelude.hashWithSalt` status

instance Prelude.NFData ExistingObjectReplication
         where
        rnf ExistingObjectReplication'{..}
          = Prelude.rnf status

instance Core.ToXML ExistingObjectReplication where
        toXML ExistingObjectReplication'{..}
          = Prelude.mconcat ["Status" Core.@= status]
