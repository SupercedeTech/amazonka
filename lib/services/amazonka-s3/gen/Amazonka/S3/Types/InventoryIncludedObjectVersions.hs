{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE PatternSynonyms            #-}
{-# LANGUAGE StrictData                 #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3.Types.InventoryIncludedObjectVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.InventoryIncludedObjectVersions (
  InventoryIncludedObjectVersions (
    ..
    , InventoryIncludedObjectVersions_All
    , InventoryIncludedObjectVersions_Current
    )
  ) where

import Amazonka.S3.Internal
import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype InventoryIncludedObjectVersions = InventoryIncludedObjectVersions'{fromInventoryIncludedObjectVersions
                                                                           ::
                                                                           Core.Text}
  deriving stock
      ( Prelude.Show
      , Prelude.Read
      , Prelude.Eq
      , Prelude.Ord
      , Prelude.Generic
      )
  deriving newtype
      ( Prelude.Hashable
      , Prelude.NFData
      , Core.FromText
      , Core.ToText
      , Core.ToByteString
      , Core.ToLog
      , Core.ToHeader
      , Core.ToQuery
      , Core.FromJSON
      , Core.FromJSONKey
      , Core.ToJSON 
      , Core.ToJSONKey
      , Core.FromXML
      , Core.ToXML
    )

pattern InventoryIncludedObjectVersions_All :: InventoryIncludedObjectVersions
pattern InventoryIncludedObjectVersions_All = InventoryIncludedObjectVersions' "All"

pattern InventoryIncludedObjectVersions_Current :: InventoryIncludedObjectVersions
pattern InventoryIncludedObjectVersions_Current = InventoryIncludedObjectVersions' "Current"

{-# COMPLETE
  InventoryIncludedObjectVersions_All,
  InventoryIncludedObjectVersions_Current,
  InventoryIncludedObjectVersions' #-}
