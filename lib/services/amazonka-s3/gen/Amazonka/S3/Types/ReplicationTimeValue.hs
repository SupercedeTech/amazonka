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
-- Module      : Amazonka.S3.Types.ReplicationTimeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.ReplicationTimeValue where

import Amazonka.S3.Internal
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A container specifying the time value for S3 Replication Time Control
-- (S3 RTC) and replication metrics @EventThreshold@.
--
-- /See:/ 'newReplicationTimeValue' smart constructor.
data ReplicationTimeValue = ReplicationTimeValue'
    {
    -- | Contains an integer specifying time in minutes.
    -- 
    -- Valid value: 15
    minutes :: Prelude.Maybe Prelude.Int
    } deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReplicationTimeValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minutes', 'replicationTimeValue_minutes' - Contains an integer specifying time in minutes.
-- 
-- Valid value: 15
newReplicationTimeValue
    :: ReplicationTimeValue
newReplicationTimeValue
  = ReplicationTimeValue'{minutes = Prelude.Nothing}

-- | Contains an integer specifying time in minutes.
-- 
-- Valid value: 15
replicationTimeValue_minutes :: Lens.Lens' ReplicationTimeValue (Prelude.Maybe Prelude.Int)
replicationTimeValue_minutes = Lens.lens (\ ReplicationTimeValue'{minutes} -> minutes) (\ s@ReplicationTimeValue'{} a -> s{minutes = a} :: ReplicationTimeValue)

instance Core.FromXML ReplicationTimeValue where
        parseXML x
          = ReplicationTimeValue' Prelude.<$>
              (x Core..@? "Minutes")

instance Prelude.Hashable ReplicationTimeValue where
        hashWithSalt _salt ReplicationTimeValue'{..}
          = _salt `Prelude.hashWithSalt` minutes

instance Prelude.NFData ReplicationTimeValue where
        rnf ReplicationTimeValue'{..} = Prelude.rnf minutes

instance Core.ToXML ReplicationTimeValue where
        toXML ReplicationTimeValue'{..}
          = Prelude.mconcat ["Minutes" Core.@= minutes]
