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
-- Module      : Amazonka.CognitoIdentityProvider.ForgotPassword
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Calling this API causes a message to be sent to the end user with a
-- confirmation code that is required to change the user\'s password. For
-- the @Username@ parameter, you can use the username or user alias. The
-- method used to send the confirmation code is sent according to the
-- specified AccountRecoverySetting. For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-recover-a-user-account.html Recovering User Accounts>
-- in the /Amazon Cognito Developer Guide/. If neither a verified phone
-- number nor a verified email exists, an @InvalidParameterException@ is
-- thrown. To use the confirmation code for resetting the password, call
-- <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_ConfirmForgotPassword.html ConfirmForgotPassword>.
--
-- This action might generate an SMS text message. Starting June 1, 2021,
-- U.S. telecom carriers require that you register an origination phone
-- number before you can send SMS messages to U.S. phone numbers. If you
-- use SMS text messages in Amazon Cognito, you must register a phone
-- number with
-- <https://console.aws.amazon.com/pinpoint/home/ Amazon Pinpoint>. Cognito
-- will use the the registered number automatically. Otherwise, Cognito
-- users that must receive SMS messages might be unable to sign up,
-- activate their accounts, or sign in.
--
-- If you have never used SMS text messages with Amazon Cognito or any
-- other Amazon Web Service, Amazon SNS might place your account in SMS
-- sandbox. In
-- /<https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html sandbox mode>/
-- , you’ll have limitations, such as sending messages to only verified
-- phone numbers. After testing in the sandbox environment, you can move
-- out of the SMS sandbox and into production. For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-sms-userpool-settings.html SMS message settings for Cognito User Pools>
-- in the /Amazon Cognito Developer Guide/.
module Amazonka.CognitoIdentityProvider.ForgotPassword
  ( -- * Creating a Request
    ForgotPassword (..),
    newForgotPassword,

    -- * Request Lenses
    forgotPassword_clientMetadata,
    forgotPassword_analyticsMetadata,
    forgotPassword_userContextData,
    forgotPassword_secretHash,
    forgotPassword_clientId,
    forgotPassword_username,

    -- * Destructuring the Response
    ForgotPasswordResponse (..),
    newForgotPasswordResponse,

    -- * Response Lenses
    forgotPasswordResponse_codeDeliveryDetails,
    forgotPasswordResponse_httpStatus,
  )
where

import Amazonka.CognitoIdentityProvider.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the request to reset a user\'s password.
--
-- /See:/ 'newForgotPassword' smart constructor.
data ForgotPassword = ForgotPassword'
  { -- | A map of custom key-value pairs that you can provide as input for any
    -- custom workflows that this action triggers.
    --
    -- You create custom workflows by assigning Lambda functions to user pool
    -- triggers. When you use the ForgotPassword API action, Amazon Cognito
    -- invokes any functions that are assigned to the following triggers: /pre
    -- sign-up/, /custom message/, and /user migration/. When Amazon Cognito
    -- invokes any of these functions, it passes a JSON payload, which the
    -- function receives as input. This payload contains a @clientMetadata@
    -- attribute, which provides the data that you assigned to the
    -- ClientMetadata parameter in your ForgotPassword request. In your
    -- function code in Lambda, you can process the @clientMetadata@ value to
    -- enhance your workflow for your specific needs.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
    -- in the /Amazon Cognito Developer Guide/.
    --
    -- Take the following limitations into consideration when you use the
    -- ClientMetadata parameter:
    --
    -- -   Amazon Cognito does not store the ClientMetadata value. This data is
    --     available only to Lambda triggers that are assigned to a user pool
    --     to support custom workflows. If your user pool configuration does
    --     not include triggers, the ClientMetadata parameter serves no
    --     purpose.
    --
    -- -   Amazon Cognito does not validate the ClientMetadata value.
    --
    -- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
    --     don\'t use it to provide sensitive information.
    clientMetadata :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Pinpoint analytics metadata for collecting metrics for
    -- @ForgotPassword@ calls.
    analyticsMetadata :: Prelude.Maybe AnalyticsMetadataType,
    -- | Contextual data such as the user\'s device fingerprint, IP address, or
    -- location used for evaluating the risk of an unexpected event by Amazon
    -- Cognito advanced security.
    userContextData :: Prelude.Maybe UserContextDataType,
    -- | A keyed-hash message authentication code (HMAC) calculated using the
    -- secret key of a user pool client and username plus the client ID in the
    -- message.
    secretHash :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The ID of the client associated with the user pool.
    clientId :: Core.Sensitive Prelude.Text,
    -- | The user name of the user for whom you want to enter a code to reset a
    -- forgotten password.
    username :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ForgotPassword' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientMetadata', 'forgotPassword_clientMetadata' - A map of custom key-value pairs that you can provide as input for any
-- custom workflows that this action triggers.
--
-- You create custom workflows by assigning Lambda functions to user pool
-- triggers. When you use the ForgotPassword API action, Amazon Cognito
-- invokes any functions that are assigned to the following triggers: /pre
-- sign-up/, /custom message/, and /user migration/. When Amazon Cognito
-- invokes any of these functions, it passes a JSON payload, which the
-- function receives as input. This payload contains a @clientMetadata@
-- attribute, which provides the data that you assigned to the
-- ClientMetadata parameter in your ForgotPassword request. In your
-- function code in Lambda, you can process the @clientMetadata@ value to
-- enhance your workflow for your specific needs.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
-- in the /Amazon Cognito Developer Guide/.
--
-- Take the following limitations into consideration when you use the
-- ClientMetadata parameter:
--
-- -   Amazon Cognito does not store the ClientMetadata value. This data is
--     available only to Lambda triggers that are assigned to a user pool
--     to support custom workflows. If your user pool configuration does
--     not include triggers, the ClientMetadata parameter serves no
--     purpose.
--
-- -   Amazon Cognito does not validate the ClientMetadata value.
--
-- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
--     don\'t use it to provide sensitive information.
--
-- 'analyticsMetadata', 'forgotPassword_analyticsMetadata' - The Amazon Pinpoint analytics metadata for collecting metrics for
-- @ForgotPassword@ calls.
--
-- 'userContextData', 'forgotPassword_userContextData' - Contextual data such as the user\'s device fingerprint, IP address, or
-- location used for evaluating the risk of an unexpected event by Amazon
-- Cognito advanced security.
--
-- 'secretHash', 'forgotPassword_secretHash' - A keyed-hash message authentication code (HMAC) calculated using the
-- secret key of a user pool client and username plus the client ID in the
-- message.
--
-- 'clientId', 'forgotPassword_clientId' - The ID of the client associated with the user pool.
--
-- 'username', 'forgotPassword_username' - The user name of the user for whom you want to enter a code to reset a
-- forgotten password.
newForgotPassword ::
  -- | 'clientId'
  Prelude.Text ->
  -- | 'username'
  Prelude.Text ->
  ForgotPassword
newForgotPassword pClientId_ pUsername_ =
  ForgotPassword'
    { clientMetadata = Prelude.Nothing,
      analyticsMetadata = Prelude.Nothing,
      userContextData = Prelude.Nothing,
      secretHash = Prelude.Nothing,
      clientId = Core._Sensitive Lens.# pClientId_,
      username = Core._Sensitive Lens.# pUsername_
    }

-- | A map of custom key-value pairs that you can provide as input for any
-- custom workflows that this action triggers.
--
-- You create custom workflows by assigning Lambda functions to user pool
-- triggers. When you use the ForgotPassword API action, Amazon Cognito
-- invokes any functions that are assigned to the following triggers: /pre
-- sign-up/, /custom message/, and /user migration/. When Amazon Cognito
-- invokes any of these functions, it passes a JSON payload, which the
-- function receives as input. This payload contains a @clientMetadata@
-- attribute, which provides the data that you assigned to the
-- ClientMetadata parameter in your ForgotPassword request. In your
-- function code in Lambda, you can process the @clientMetadata@ value to
-- enhance your workflow for your specific needs.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
-- in the /Amazon Cognito Developer Guide/.
--
-- Take the following limitations into consideration when you use the
-- ClientMetadata parameter:
--
-- -   Amazon Cognito does not store the ClientMetadata value. This data is
--     available only to Lambda triggers that are assigned to a user pool
--     to support custom workflows. If your user pool configuration does
--     not include triggers, the ClientMetadata parameter serves no
--     purpose.
--
-- -   Amazon Cognito does not validate the ClientMetadata value.
--
-- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
--     don\'t use it to provide sensitive information.
forgotPassword_clientMetadata :: Lens.Lens' ForgotPassword (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
forgotPassword_clientMetadata = Lens.lens (\ForgotPassword' {clientMetadata} -> clientMetadata) (\s@ForgotPassword' {} a -> s {clientMetadata = a} :: ForgotPassword) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Pinpoint analytics metadata for collecting metrics for
-- @ForgotPassword@ calls.
forgotPassword_analyticsMetadata :: Lens.Lens' ForgotPassword (Prelude.Maybe AnalyticsMetadataType)
forgotPassword_analyticsMetadata = Lens.lens (\ForgotPassword' {analyticsMetadata} -> analyticsMetadata) (\s@ForgotPassword' {} a -> s {analyticsMetadata = a} :: ForgotPassword)

-- | Contextual data such as the user\'s device fingerprint, IP address, or
-- location used for evaluating the risk of an unexpected event by Amazon
-- Cognito advanced security.
forgotPassword_userContextData :: Lens.Lens' ForgotPassword (Prelude.Maybe UserContextDataType)
forgotPassword_userContextData = Lens.lens (\ForgotPassword' {userContextData} -> userContextData) (\s@ForgotPassword' {} a -> s {userContextData = a} :: ForgotPassword)

-- | A keyed-hash message authentication code (HMAC) calculated using the
-- secret key of a user pool client and username plus the client ID in the
-- message.
forgotPassword_secretHash :: Lens.Lens' ForgotPassword (Prelude.Maybe Prelude.Text)
forgotPassword_secretHash = Lens.lens (\ForgotPassword' {secretHash} -> secretHash) (\s@ForgotPassword' {} a -> s {secretHash = a} :: ForgotPassword) Prelude.. Lens.mapping Core._Sensitive

-- | The ID of the client associated with the user pool.
forgotPassword_clientId :: Lens.Lens' ForgotPassword Prelude.Text
forgotPassword_clientId = Lens.lens (\ForgotPassword' {clientId} -> clientId) (\s@ForgotPassword' {} a -> s {clientId = a} :: ForgotPassword) Prelude.. Core._Sensitive

-- | The user name of the user for whom you want to enter a code to reset a
-- forgotten password.
forgotPassword_username :: Lens.Lens' ForgotPassword Prelude.Text
forgotPassword_username = Lens.lens (\ForgotPassword' {username} -> username) (\s@ForgotPassword' {} a -> s {username = a} :: ForgotPassword) Prelude.. Core._Sensitive

instance Core.AWSRequest ForgotPassword where
  type
    AWSResponse ForgotPassword =
      ForgotPasswordResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ForgotPasswordResponse'
            Prelude.<$> (x Core..?> "CodeDeliveryDetails")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ForgotPassword where
  hashWithSalt salt' ForgotPassword' {..} =
    salt' `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` clientId
      `Prelude.hashWithSalt` secretHash
      `Prelude.hashWithSalt` userContextData
      `Prelude.hashWithSalt` analyticsMetadata
      `Prelude.hashWithSalt` clientMetadata

instance Prelude.NFData ForgotPassword where
  rnf ForgotPassword' {..} =
    Prelude.rnf clientMetadata
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf clientId
      `Prelude.seq` Prelude.rnf secretHash
      `Prelude.seq` Prelude.rnf userContextData
      `Prelude.seq` Prelude.rnf analyticsMetadata

instance Core.ToHeaders ForgotPassword where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.ForgotPassword" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ForgotPassword where
  toJSON ForgotPassword' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientMetadata" Core..=)
              Prelude.<$> clientMetadata,
            ("AnalyticsMetadata" Core..=)
              Prelude.<$> analyticsMetadata,
            ("UserContextData" Core..=)
              Prelude.<$> userContextData,
            ("SecretHash" Core..=) Prelude.<$> secretHash,
            Prelude.Just ("ClientId" Core..= clientId),
            Prelude.Just ("Username" Core..= username)
          ]
      )

instance Core.ToPath ForgotPassword where
  toPath = Prelude.const "/"

instance Core.ToQuery ForgotPassword where
  toQuery = Prelude.const Prelude.mempty

-- | Respresents the response from the server regarding the request to reset
-- a password.
--
-- /See:/ 'newForgotPasswordResponse' smart constructor.
data ForgotPasswordResponse = ForgotPasswordResponse'
  { -- | The code delivery details returned by the server in response to the
    -- request to reset a password.
    codeDeliveryDetails :: Prelude.Maybe CodeDeliveryDetailsType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ForgotPasswordResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codeDeliveryDetails', 'forgotPasswordResponse_codeDeliveryDetails' - The code delivery details returned by the server in response to the
-- request to reset a password.
--
-- 'httpStatus', 'forgotPasswordResponse_httpStatus' - The response's http status code.
newForgotPasswordResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ForgotPasswordResponse
newForgotPasswordResponse pHttpStatus_ =
  ForgotPasswordResponse'
    { codeDeliveryDetails =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The code delivery details returned by the server in response to the
-- request to reset a password.
forgotPasswordResponse_codeDeliveryDetails :: Lens.Lens' ForgotPasswordResponse (Prelude.Maybe CodeDeliveryDetailsType)
forgotPasswordResponse_codeDeliveryDetails = Lens.lens (\ForgotPasswordResponse' {codeDeliveryDetails} -> codeDeliveryDetails) (\s@ForgotPasswordResponse' {} a -> s {codeDeliveryDetails = a} :: ForgotPasswordResponse)

-- | The response's http status code.
forgotPasswordResponse_httpStatus :: Lens.Lens' ForgotPasswordResponse Prelude.Int
forgotPasswordResponse_httpStatus = Lens.lens (\ForgotPasswordResponse' {httpStatus} -> httpStatus) (\s@ForgotPasswordResponse' {} a -> s {httpStatus = a} :: ForgotPasswordResponse)

instance Prelude.NFData ForgotPasswordResponse where
  rnf ForgotPasswordResponse' {..} =
    Prelude.rnf codeDeliveryDetails
      `Prelude.seq` Prelude.rnf httpStatus
