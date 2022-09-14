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
-- Module      : Amazonka.S3.Types.ChecksumAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.ChecksumAlgorithm (
  ChecksumAlgorithm (
    ..
    , ChecksumAlgorithm_CRC32
    , ChecksumAlgorithm_CRC32C
    , ChecksumAlgorithm_SHA1
    , ChecksumAlgorithm_SHA256
    )
  ) where

import Amazonka.S3.Internal
import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype ChecksumAlgorithm = ChecksumAlgorithm'{fromChecksumAlgorithm
                                               :: Core.Text}
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

pattern ChecksumAlgorithm_CRC32 :: ChecksumAlgorithm
pattern ChecksumAlgorithm_CRC32 = ChecksumAlgorithm' "CRC32"

pattern ChecksumAlgorithm_CRC32C :: ChecksumAlgorithm
pattern ChecksumAlgorithm_CRC32C = ChecksumAlgorithm' "CRC32C"

pattern ChecksumAlgorithm_SHA1 :: ChecksumAlgorithm
pattern ChecksumAlgorithm_SHA1 = ChecksumAlgorithm' "SHA1"

pattern ChecksumAlgorithm_SHA256 :: ChecksumAlgorithm
pattern ChecksumAlgorithm_SHA256 = ChecksumAlgorithm' "SHA256"

{-# COMPLETE
  ChecksumAlgorithm_CRC32,
  ChecksumAlgorithm_CRC32C,
  ChecksumAlgorithm_SHA1,
  ChecksumAlgorithm_SHA256,
  ChecksumAlgorithm' #-}
