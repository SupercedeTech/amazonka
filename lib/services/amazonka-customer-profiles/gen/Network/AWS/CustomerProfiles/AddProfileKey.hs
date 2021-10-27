{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CustomerProfiles.AddProfileKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a new key value with a specific profile, such as a Contact
-- Trace Record (CTR) ContactId.
--
-- A profile object can have a single unique key and any number of
-- additional keys that can be used to identify the profile that it belongs
-- to.
module Network.AWS.CustomerProfiles.AddProfileKey
  ( -- * Creating a Request
    AddProfileKey (..),
    newAddProfileKey,

    -- * Request Lenses
    addProfileKey_profileId,
    addProfileKey_keyName,
    addProfileKey_values,
    addProfileKey_domainName,

    -- * Destructuring the Response
    AddProfileKeyResponse (..),
    newAddProfileKeyResponse,

    -- * Response Lenses
    addProfileKeyResponse_values,
    addProfileKeyResponse_keyName,
    addProfileKeyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAddProfileKey' smart constructor.
data AddProfileKey = AddProfileKey'
  { -- | The unique identifier of a customer profile.
    profileId :: Prelude.Text,
    -- | A searchable identifier of a customer profile.
    keyName :: Prelude.Text,
    -- | A list of key values.
    values :: [Prelude.Text],
    -- | The unique name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddProfileKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileId', 'addProfileKey_profileId' - The unique identifier of a customer profile.
--
-- 'keyName', 'addProfileKey_keyName' - A searchable identifier of a customer profile.
--
-- 'values', 'addProfileKey_values' - A list of key values.
--
-- 'domainName', 'addProfileKey_domainName' - The unique name of the domain.
newAddProfileKey ::
  -- | 'profileId'
  Prelude.Text ->
  -- | 'keyName'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  AddProfileKey
newAddProfileKey pProfileId_ pKeyName_ pDomainName_ =
  AddProfileKey'
    { profileId = pProfileId_,
      keyName = pKeyName_,
      values = Prelude.mempty,
      domainName = pDomainName_
    }

-- | The unique identifier of a customer profile.
addProfileKey_profileId :: Lens.Lens' AddProfileKey Prelude.Text
addProfileKey_profileId = Lens.lens (\AddProfileKey' {profileId} -> profileId) (\s@AddProfileKey' {} a -> s {profileId = a} :: AddProfileKey)

-- | A searchable identifier of a customer profile.
addProfileKey_keyName :: Lens.Lens' AddProfileKey Prelude.Text
addProfileKey_keyName = Lens.lens (\AddProfileKey' {keyName} -> keyName) (\s@AddProfileKey' {} a -> s {keyName = a} :: AddProfileKey)

-- | A list of key values.
addProfileKey_values :: Lens.Lens' AddProfileKey [Prelude.Text]
addProfileKey_values = Lens.lens (\AddProfileKey' {values} -> values) (\s@AddProfileKey' {} a -> s {values = a} :: AddProfileKey) Prelude.. Lens.coerced

-- | The unique name of the domain.
addProfileKey_domainName :: Lens.Lens' AddProfileKey Prelude.Text
addProfileKey_domainName = Lens.lens (\AddProfileKey' {domainName} -> domainName) (\s@AddProfileKey' {} a -> s {domainName = a} :: AddProfileKey)

instance Core.AWSRequest AddProfileKey where
  type
    AWSResponse AddProfileKey =
      AddProfileKeyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AddProfileKeyResponse'
            Prelude.<$> (x Core..?> "Values" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "KeyName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AddProfileKey

instance Prelude.NFData AddProfileKey

instance Core.ToHeaders AddProfileKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AddProfileKey where
  toJSON AddProfileKey' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ProfileId" Core..= profileId),
            Prelude.Just ("KeyName" Core..= keyName),
            Prelude.Just ("Values" Core..= values)
          ]
      )

instance Core.ToPath AddProfileKey where
  toPath AddProfileKey' {..} =
    Prelude.mconcat
      ["/domains/", Core.toBS domainName, "/profiles/keys"]

instance Core.ToQuery AddProfileKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAddProfileKeyResponse' smart constructor.
data AddProfileKeyResponse = AddProfileKeyResponse'
  { -- | A list of key values.
    values :: Prelude.Maybe [Prelude.Text],
    -- | A searchable identifier of a customer profile.
    keyName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AddProfileKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'addProfileKeyResponse_values' - A list of key values.
--
-- 'keyName', 'addProfileKeyResponse_keyName' - A searchable identifier of a customer profile.
--
-- 'httpStatus', 'addProfileKeyResponse_httpStatus' - The response's http status code.
newAddProfileKeyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AddProfileKeyResponse
newAddProfileKeyResponse pHttpStatus_ =
  AddProfileKeyResponse'
    { values = Prelude.Nothing,
      keyName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of key values.
addProfileKeyResponse_values :: Lens.Lens' AddProfileKeyResponse (Prelude.Maybe [Prelude.Text])
addProfileKeyResponse_values = Lens.lens (\AddProfileKeyResponse' {values} -> values) (\s@AddProfileKeyResponse' {} a -> s {values = a} :: AddProfileKeyResponse) Prelude.. Lens.mapping Lens.coerced

-- | A searchable identifier of a customer profile.
addProfileKeyResponse_keyName :: Lens.Lens' AddProfileKeyResponse (Prelude.Maybe Prelude.Text)
addProfileKeyResponse_keyName = Lens.lens (\AddProfileKeyResponse' {keyName} -> keyName) (\s@AddProfileKeyResponse' {} a -> s {keyName = a} :: AddProfileKeyResponse)

-- | The response's http status code.
addProfileKeyResponse_httpStatus :: Lens.Lens' AddProfileKeyResponse Prelude.Int
addProfileKeyResponse_httpStatus = Lens.lens (\AddProfileKeyResponse' {httpStatus} -> httpStatus) (\s@AddProfileKeyResponse' {} a -> s {httpStatus = a} :: AddProfileKeyResponse)

instance Prelude.NFData AddProfileKeyResponse
