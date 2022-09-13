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
-- Module      : Amazonka.S3.Types.Destination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.Destination where

import Amazonka.S3.Internal
import Amazonka.S3.Types.AccessControlTranslation
import Amazonka.S3.Types.EncryptionConfiguration
import Amazonka.S3.Types.Metrics
import Amazonka.S3.Types.ReplicationTime
import Amazonka.S3.Types.StorageClass
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Specifies information about where to publish analysis or configuration
-- results for an Amazon S3 bucket and S3 Replication Time Control (S3
-- RTC).
--
-- /See:/ 'newDestination' smart constructor.
data Destination = Destination'
    {
    -- | A container specifying S3 Replication Time Control (S3 RTC), including
    -- whether S3 RTC is enabled and the time when all objects and operations
    -- on objects must be replicated. Must be specified together with a
    -- @Metrics@ block.
    replicationTime :: Prelude.Maybe ReplicationTime
    -- | Destination bucket owner account ID. In a cross-account scenario, if you
    -- direct Amazon S3 to change replica ownership to the Amazon Web Services
    -- account that owns the destination bucket by specifying the
    -- @AccessControlTranslation@ property, this is the account ID of the
    -- destination bucket owner. For more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html Replication Additional Configuration: Changing the Replica Owner>
    -- in the /Amazon S3 User Guide/.
    , account :: Prelude.Maybe Prelude.Text
    -- | A container specifying replication metrics-related settings enabling
    -- replication metrics and events.
    , metrics :: Prelude.Maybe Metrics
    -- | A container that provides information about encryption. If
    -- @SourceSelectionCriteria@ is specified, you must specify this element.
    , encryptionConfiguration :: Prelude.Maybe EncryptionConfiguration
    -- | Specify this only in a cross-account scenario (where source and
    -- destination bucket owners are not the same), and you want to change
    -- replica ownership to the Amazon Web Services account that owns the
    -- destination bucket. If this is not specified in the replication
    -- configuration, the replicas are owned by same Amazon Web Services
    -- account that owns the source object.
    , accessControlTranslation :: Prelude.Maybe AccessControlTranslation
    -- | The storage class to use when replicating objects, such as S3 Standard
    -- or reduced redundancy. By default, Amazon S3 uses the storage class of
    -- the source object to create the object replica.
    -- 
    -- For valid values, see the @StorageClass@ element of the
    -- <https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html PUT Bucket replication>
    -- action in the /Amazon S3 API Reference/.
    , storageClass :: Prelude.Maybe StorageClass
    -- | The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to
    -- store the results.
    , bucket :: BucketName
    } deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Destination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationTime', 'destination_replicationTime' - A container specifying S3 Replication Time Control (S3 RTC), including
-- whether S3 RTC is enabled and the time when all objects and operations
-- on objects must be replicated. Must be specified together with a
-- @Metrics@ block.
--
-- 'account', 'destination_account' - Destination bucket owner account ID. In a cross-account scenario, if you
-- direct Amazon S3 to change replica ownership to the Amazon Web Services
-- account that owns the destination bucket by specifying the
-- @AccessControlTranslation@ property, this is the account ID of the
-- destination bucket owner. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html Replication Additional Configuration: Changing the Replica Owner>
-- in the /Amazon S3 User Guide/.
--
-- 'metrics', 'destination_metrics' - A container specifying replication metrics-related settings enabling
-- replication metrics and events.
--
-- 'encryptionConfiguration', 'destination_encryptionConfiguration' - A container that provides information about encryption. If
-- @SourceSelectionCriteria@ is specified, you must specify this element.
--
-- 'accessControlTranslation', 'destination_accessControlTranslation' - Specify this only in a cross-account scenario (where source and
-- destination bucket owners are not the same), and you want to change
-- replica ownership to the Amazon Web Services account that owns the
-- destination bucket. If this is not specified in the replication
-- configuration, the replicas are owned by same Amazon Web Services
-- account that owns the source object.
--
-- 'storageClass', 'destination_storageClass' - The storage class to use when replicating objects, such as S3 Standard
-- or reduced redundancy. By default, Amazon S3 uses the storage class of
-- the source object to create the object replica.
-- 
-- For valid values, see the @StorageClass@ element of the
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html PUT Bucket replication>
-- action in the /Amazon S3 API Reference/.
--
-- 'bucket', 'destination_bucket' - The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to
-- store the results.
newDestination
    :: BucketName -- ^ 'bucket'
    -> Destination
newDestination pBucket_
  = Destination'{replicationTime = Prelude.Nothing,
                 account = Prelude.Nothing, metrics = Prelude.Nothing,
                 encryptionConfiguration = Prelude.Nothing,
                 accessControlTranslation = Prelude.Nothing,
                 storageClass = Prelude.Nothing, bucket = pBucket_}

-- | A container specifying S3 Replication Time Control (S3 RTC), including
-- whether S3 RTC is enabled and the time when all objects and operations
-- on objects must be replicated. Must be specified together with a
-- @Metrics@ block.
destination_replicationTime :: Lens.Lens' Destination (Prelude.Maybe ReplicationTime)
destination_replicationTime = Lens.lens (\ Destination'{replicationTime} -> replicationTime) (\ s@Destination'{} a -> s{replicationTime = a} :: Destination)

-- | Destination bucket owner account ID. In a cross-account scenario, if you
-- direct Amazon S3 to change replica ownership to the Amazon Web Services
-- account that owns the destination bucket by specifying the
-- @AccessControlTranslation@ property, this is the account ID of the
-- destination bucket owner. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html Replication Additional Configuration: Changing the Replica Owner>
-- in the /Amazon S3 User Guide/.
destination_account :: Lens.Lens' Destination (Prelude.Maybe Prelude.Text)
destination_account = Lens.lens (\ Destination'{account} -> account) (\ s@Destination'{} a -> s{account = a} :: Destination)

-- | A container specifying replication metrics-related settings enabling
-- replication metrics and events.
destination_metrics :: Lens.Lens' Destination (Prelude.Maybe Metrics)
destination_metrics = Lens.lens (\ Destination'{metrics} -> metrics) (\ s@Destination'{} a -> s{metrics = a} :: Destination)

-- | A container that provides information about encryption. If
-- @SourceSelectionCriteria@ is specified, you must specify this element.
destination_encryptionConfiguration :: Lens.Lens' Destination (Prelude.Maybe EncryptionConfiguration)
destination_encryptionConfiguration = Lens.lens (\ Destination'{encryptionConfiguration} -> encryptionConfiguration) (\ s@Destination'{} a -> s{encryptionConfiguration = a} :: Destination)

-- | Specify this only in a cross-account scenario (where source and
-- destination bucket owners are not the same), and you want to change
-- replica ownership to the Amazon Web Services account that owns the
-- destination bucket. If this is not specified in the replication
-- configuration, the replicas are owned by same Amazon Web Services
-- account that owns the source object.
destination_accessControlTranslation :: Lens.Lens' Destination (Prelude.Maybe AccessControlTranslation)
destination_accessControlTranslation = Lens.lens (\ Destination'{accessControlTranslation} -> accessControlTranslation) (\ s@Destination'{} a -> s{accessControlTranslation = a} :: Destination)

-- | The storage class to use when replicating objects, such as S3 Standard
-- or reduced redundancy. By default, Amazon S3 uses the storage class of
-- the source object to create the object replica.
-- 
-- For valid values, see the @StorageClass@ element of the
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html PUT Bucket replication>
-- action in the /Amazon S3 API Reference/.
destination_storageClass :: Lens.Lens' Destination (Prelude.Maybe StorageClass)
destination_storageClass = Lens.lens (\ Destination'{storageClass} -> storageClass) (\ s@Destination'{} a -> s{storageClass = a} :: Destination)

-- | The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to
-- store the results.
destination_bucket :: Lens.Lens' Destination BucketName
destination_bucket = Lens.lens (\ Destination'{bucket} -> bucket) (\ s@Destination'{} a -> s{bucket = a} :: Destination)

instance Core.FromXML Destination where
        parseXML x
          = Destination' Prelude.<$>
              (x Core..@? "ReplicationTime") Prelude.<*>
                (x Core..@? "Account")
                Prelude.<*> (x Core..@? "Metrics")
                Prelude.<*> (x Core..@? "EncryptionConfiguration")
                Prelude.<*> (x Core..@? "AccessControlTranslation")
                Prelude.<*> (x Core..@? "StorageClass")
                Prelude.<*> (x Core..@ "Bucket")

instance Prelude.Hashable Destination where
        hashWithSalt _salt Destination'{..}
          = _salt `Prelude.hashWithSalt` replicationTime
              `Prelude.hashWithSalt` account
              `Prelude.hashWithSalt` metrics
              `Prelude.hashWithSalt` encryptionConfiguration
              `Prelude.hashWithSalt` accessControlTranslation
              `Prelude.hashWithSalt` storageClass
              `Prelude.hashWithSalt` bucket

instance Prelude.NFData Destination where
        rnf Destination'{..}
          = Prelude.rnf replicationTime `Prelude.seq`
              Prelude.rnf account `Prelude.seq`
                Prelude.rnf metrics `Prelude.seq`
                  Prelude.rnf encryptionConfiguration `Prelude.seq`
                    Prelude.rnf accessControlTranslation `Prelude.seq`
                      Prelude.rnf storageClass `Prelude.seq`
                        Prelude.rnf bucket

instance Core.ToXML Destination where
        toXML Destination'{..}
          = Prelude.mconcat
              ["ReplicationTime" Core.@= replicationTime,
               "Account" Core.@= account, "Metrics" Core.@= metrics,
               "EncryptionConfiguration" Core.@=
                 encryptionConfiguration,
               "AccessControlTranslation" Core.@=
                 accessControlTranslation,
               "StorageClass" Core.@= storageClass,
               "Bucket" Core.@= bucket]
