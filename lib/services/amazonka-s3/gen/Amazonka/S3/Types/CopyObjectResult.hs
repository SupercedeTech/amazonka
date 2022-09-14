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
-- Module      : Amazonka.S3.Types.CopyObjectResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Amazonka.S3.Types.CopyObjectResult where

import Amazonka.S3.Internal
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Container for all response elements.
--
-- /See:/ 'newCopyObjectResult' smart constructor.
data CopyObjectResult = CopyObjectResult'
    {
    -- | The base64-encoded, 32-bit CRC32C checksum of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    checksumCRC32C :: Prelude.Maybe Prelude.Text
    -- | The base64-encoded, 160-bit SHA-1 digest of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    , checksumSHA1 :: Prelude.Maybe Prelude.Text
    -- | The base64-encoded, 32-bit CRC32 checksum of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    , checksumCRC32 :: Prelude.Maybe Prelude.Text
    -- | The base64-encoded, 256-bit SHA-256 digest of the object. This will only
    -- be present if it was uploaded with the object. With multipart uploads,
    -- this may not be a checksum value of the object. For more information
    -- about how checksums are calculated with multipart uploads, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
    -- in the /Amazon S3 User Guide/.
    , checksumSHA256 :: Prelude.Maybe Prelude.Text
    -- | Creation date of the object.
    , lastModified :: Prelude.Maybe Core.ISO8601
    -- | Returns the ETag of the new object. The ETag reflects only changes to
    -- the contents of an object, not its metadata.
    , eTag :: Prelude.Maybe ETag
    } deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyObjectResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'checksumCRC32C', 'copyObjectResult_checksumCRC32C' - The base64-encoded, 32-bit CRC32C checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'checksumSHA1', 'copyObjectResult_checksumSHA1' - The base64-encoded, 160-bit SHA-1 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'checksumCRC32', 'copyObjectResult_checksumCRC32' - The base64-encoded, 32-bit CRC32 checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'checksumSHA256', 'copyObjectResult_checksumSHA256' - The base64-encoded, 256-bit SHA-256 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
--
-- 'lastModified', 'copyObjectResult_lastModified' - Creation date of the object.
--
-- 'eTag', 'copyObjectResult_eTag' - Returns the ETag of the new object. The ETag reflects only changes to
-- the contents of an object, not its metadata.
newCopyObjectResult
    :: CopyObjectResult
newCopyObjectResult
  = CopyObjectResult'{checksumCRC32C = Prelude.Nothing,
                      checksumSHA1 = Prelude.Nothing,
                      checksumCRC32 = Prelude.Nothing,
                      checksumSHA256 = Prelude.Nothing,
                      lastModified = Prelude.Nothing,
                      eTag = Prelude.Nothing}

-- | The base64-encoded, 32-bit CRC32C checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
copyObjectResult_checksumCRC32C :: Lens.Lens' CopyObjectResult (Prelude.Maybe Prelude.Text)
copyObjectResult_checksumCRC32C = Lens.lens (\ CopyObjectResult'{checksumCRC32C} -> checksumCRC32C) (\ s@CopyObjectResult'{} a -> s{checksumCRC32C = a} :: CopyObjectResult)

-- | The base64-encoded, 160-bit SHA-1 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
copyObjectResult_checksumSHA1 :: Lens.Lens' CopyObjectResult (Prelude.Maybe Prelude.Text)
copyObjectResult_checksumSHA1 = Lens.lens (\ CopyObjectResult'{checksumSHA1} -> checksumSHA1) (\ s@CopyObjectResult'{} a -> s{checksumSHA1 = a} :: CopyObjectResult)

-- | The base64-encoded, 32-bit CRC32 checksum of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
copyObjectResult_checksumCRC32 :: Lens.Lens' CopyObjectResult (Prelude.Maybe Prelude.Text)
copyObjectResult_checksumCRC32 = Lens.lens (\ CopyObjectResult'{checksumCRC32} -> checksumCRC32) (\ s@CopyObjectResult'{} a -> s{checksumCRC32 = a} :: CopyObjectResult)

-- | The base64-encoded, 256-bit SHA-256 digest of the object. This will only
-- be present if it was uploaded with the object. With multipart uploads,
-- this may not be a checksum value of the object. For more information
-- about how checksums are calculated with multipart uploads, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums Checking object integrity>
-- in the /Amazon S3 User Guide/.
copyObjectResult_checksumSHA256 :: Lens.Lens' CopyObjectResult (Prelude.Maybe Prelude.Text)
copyObjectResult_checksumSHA256 = Lens.lens (\ CopyObjectResult'{checksumSHA256} -> checksumSHA256) (\ s@CopyObjectResult'{} a -> s{checksumSHA256 = a} :: CopyObjectResult)

-- | Creation date of the object.
copyObjectResult_lastModified :: Lens.Lens' CopyObjectResult (Prelude.Maybe Prelude.UTCTime)
copyObjectResult_lastModified = Lens.lens (\ CopyObjectResult'{lastModified} -> lastModified) (\ s@CopyObjectResult'{} a -> s{lastModified = a} :: CopyObjectResult) Prelude.. Lens.mapping Core._Time

-- | Returns the ETag of the new object. The ETag reflects only changes to
-- the contents of an object, not its metadata.
copyObjectResult_eTag :: Lens.Lens' CopyObjectResult (Prelude.Maybe ETag)
copyObjectResult_eTag = Lens.lens (\ CopyObjectResult'{eTag} -> eTag) (\ s@CopyObjectResult'{} a -> s{eTag = a} :: CopyObjectResult)

instance Core.FromXML CopyObjectResult where
        parseXML x
          = CopyObjectResult' Prelude.<$>
              (x Core..@? "ChecksumCRC32C") Prelude.<*>
                (x Core..@? "ChecksumSHA1")
                Prelude.<*> (x Core..@? "ChecksumCRC32")
                Prelude.<*> (x Core..@? "ChecksumSHA256")
                Prelude.<*> (x Core..@? "LastModified")
                Prelude.<*> (x Core..@? "ETag")

instance Prelude.Hashable CopyObjectResult where
        hashWithSalt _salt CopyObjectResult'{..}
          = _salt `Prelude.hashWithSalt` checksumCRC32C
              `Prelude.hashWithSalt` checksumSHA1
              `Prelude.hashWithSalt` checksumCRC32
              `Prelude.hashWithSalt` checksumSHA256
              `Prelude.hashWithSalt` lastModified
              `Prelude.hashWithSalt` eTag

instance Prelude.NFData CopyObjectResult where
        rnf CopyObjectResult'{..}
          = Prelude.rnf checksumCRC32C `Prelude.seq`
              Prelude.rnf checksumSHA1 `Prelude.seq`
                Prelude.rnf checksumCRC32 `Prelude.seq`
                  Prelude.rnf checksumSHA256 `Prelude.seq`
                    Prelude.rnf lastModified `Prelude.seq`
                      Prelude.rnf eTag
