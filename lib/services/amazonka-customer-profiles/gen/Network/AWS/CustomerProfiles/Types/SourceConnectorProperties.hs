{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CustomerProfiles.Types.SourceConnectorProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.SourceConnectorProperties where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types.MarketoSourceProperties
import Network.AWS.CustomerProfiles.Types.S3SourceProperties
import Network.AWS.CustomerProfiles.Types.SalesforceSourceProperties
import Network.AWS.CustomerProfiles.Types.ServiceNowSourceProperties
import Network.AWS.CustomerProfiles.Types.ZendeskSourceProperties
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the information that is required to query a particular Amazon
-- AppFlow connector. Customer Profiles supports Salesforce, Zendesk,
-- Marketo, ServiceNow and Amazon S3.
--
-- /See:/ 'newSourceConnectorProperties' smart constructor.
data SourceConnectorProperties = SourceConnectorProperties'
  { -- | The properties that are applied when ServiceNow is being used as a
    -- source.
    serviceNow :: Prelude.Maybe ServiceNowSourceProperties,
    -- | The properties that are applied when Marketo is being used as a source.
    marketo :: Prelude.Maybe MarketoSourceProperties,
    -- | The properties that are applied when Salesforce is being used as a
    -- source.
    salesforce :: Prelude.Maybe SalesforceSourceProperties,
    -- | The properties that are applied when using Zendesk as a flow source.
    zendesk :: Prelude.Maybe ZendeskSourceProperties,
    -- | The properties that are applied when Amazon S3 is being used as the flow
    -- source.
    s3 :: Prelude.Maybe S3SourceProperties
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceConnectorProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceNow', 'sourceConnectorProperties_serviceNow' - The properties that are applied when ServiceNow is being used as a
-- source.
--
-- 'marketo', 'sourceConnectorProperties_marketo' - The properties that are applied when Marketo is being used as a source.
--
-- 'salesforce', 'sourceConnectorProperties_salesforce' - The properties that are applied when Salesforce is being used as a
-- source.
--
-- 'zendesk', 'sourceConnectorProperties_zendesk' - The properties that are applied when using Zendesk as a flow source.
--
-- 's3', 'sourceConnectorProperties_s3' - The properties that are applied when Amazon S3 is being used as the flow
-- source.
newSourceConnectorProperties ::
  SourceConnectorProperties
newSourceConnectorProperties =
  SourceConnectorProperties'
    { serviceNow =
        Prelude.Nothing,
      marketo = Prelude.Nothing,
      salesforce = Prelude.Nothing,
      zendesk = Prelude.Nothing,
      s3 = Prelude.Nothing
    }

-- | The properties that are applied when ServiceNow is being used as a
-- source.
sourceConnectorProperties_serviceNow :: Lens.Lens' SourceConnectorProperties (Prelude.Maybe ServiceNowSourceProperties)
sourceConnectorProperties_serviceNow = Lens.lens (\SourceConnectorProperties' {serviceNow} -> serviceNow) (\s@SourceConnectorProperties' {} a -> s {serviceNow = a} :: SourceConnectorProperties)

-- | The properties that are applied when Marketo is being used as a source.
sourceConnectorProperties_marketo :: Lens.Lens' SourceConnectorProperties (Prelude.Maybe MarketoSourceProperties)
sourceConnectorProperties_marketo = Lens.lens (\SourceConnectorProperties' {marketo} -> marketo) (\s@SourceConnectorProperties' {} a -> s {marketo = a} :: SourceConnectorProperties)

-- | The properties that are applied when Salesforce is being used as a
-- source.
sourceConnectorProperties_salesforce :: Lens.Lens' SourceConnectorProperties (Prelude.Maybe SalesforceSourceProperties)
sourceConnectorProperties_salesforce = Lens.lens (\SourceConnectorProperties' {salesforce} -> salesforce) (\s@SourceConnectorProperties' {} a -> s {salesforce = a} :: SourceConnectorProperties)

-- | The properties that are applied when using Zendesk as a flow source.
sourceConnectorProperties_zendesk :: Lens.Lens' SourceConnectorProperties (Prelude.Maybe ZendeskSourceProperties)
sourceConnectorProperties_zendesk = Lens.lens (\SourceConnectorProperties' {zendesk} -> zendesk) (\s@SourceConnectorProperties' {} a -> s {zendesk = a} :: SourceConnectorProperties)

-- | The properties that are applied when Amazon S3 is being used as the flow
-- source.
sourceConnectorProperties_s3 :: Lens.Lens' SourceConnectorProperties (Prelude.Maybe S3SourceProperties)
sourceConnectorProperties_s3 = Lens.lens (\SourceConnectorProperties' {s3} -> s3) (\s@SourceConnectorProperties' {} a -> s {s3 = a} :: SourceConnectorProperties)

instance Prelude.Hashable SourceConnectorProperties

instance Prelude.NFData SourceConnectorProperties

instance Core.ToJSON SourceConnectorProperties where
  toJSON SourceConnectorProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ServiceNow" Core..=) Prelude.<$> serviceNow,
            ("Marketo" Core..=) Prelude.<$> marketo,
            ("Salesforce" Core..=) Prelude.<$> salesforce,
            ("Zendesk" Core..=) Prelude.<$> zendesk,
            ("S3" Core..=) Prelude.<$> s3
          ]
      )
