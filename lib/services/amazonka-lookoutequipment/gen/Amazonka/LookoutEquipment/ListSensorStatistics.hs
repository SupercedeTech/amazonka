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
-- Module      : Amazonka.LookoutEquipment.ListSensorStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists statistics about the data collected for each of the sensors that
-- have been successfully ingested in the particular dataset. Can also be
-- used to retreive Sensor Statistics for a previous ingestion job.
module Amazonka.LookoutEquipment.ListSensorStatistics
  ( -- * Creating a Request
    ListSensorStatistics (..),
    newListSensorStatistics,

    -- * Request Lenses
    listSensorStatistics_ingestionJobId,
    listSensorStatistics_nextToken,
    listSensorStatistics_maxResults,
    listSensorStatistics_datasetName,

    -- * Destructuring the Response
    ListSensorStatisticsResponse (..),
    newListSensorStatisticsResponse,

    -- * Response Lenses
    listSensorStatisticsResponse_sensorStatisticsSummaries,
    listSensorStatisticsResponse_nextToken,
    listSensorStatisticsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListSensorStatistics' smart constructor.
data ListSensorStatistics = ListSensorStatistics'
  { -- | The ingestion job id associated with the list of Sensor Statistics. To
    -- get sensor statistics for a particular ingestion job id, both dataset
    -- name and ingestion job id must be submitted as inputs.
    ingestionJobId :: Prelude.Maybe Prelude.Text,
    -- | An opaque pagination token indicating where to continue the listing of
    -- sensor statistics.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of sensors for which to retrieve
    -- statistics.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the dataset associated with the list of Sensor Statistics.
    datasetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSensorStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ingestionJobId', 'listSensorStatistics_ingestionJobId' - The ingestion job id associated with the list of Sensor Statistics. To
-- get sensor statistics for a particular ingestion job id, both dataset
-- name and ingestion job id must be submitted as inputs.
--
-- 'nextToken', 'listSensorStatistics_nextToken' - An opaque pagination token indicating where to continue the listing of
-- sensor statistics.
--
-- 'maxResults', 'listSensorStatistics_maxResults' - Specifies the maximum number of sensors for which to retrieve
-- statistics.
--
-- 'datasetName', 'listSensorStatistics_datasetName' - The name of the dataset associated with the list of Sensor Statistics.
newListSensorStatistics ::
  -- | 'datasetName'
  Prelude.Text ->
  ListSensorStatistics
newListSensorStatistics pDatasetName_ =
  ListSensorStatistics'
    { ingestionJobId =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      datasetName = pDatasetName_
    }

-- | The ingestion job id associated with the list of Sensor Statistics. To
-- get sensor statistics for a particular ingestion job id, both dataset
-- name and ingestion job id must be submitted as inputs.
listSensorStatistics_ingestionJobId :: Lens.Lens' ListSensorStatistics (Prelude.Maybe Prelude.Text)
listSensorStatistics_ingestionJobId = Lens.lens (\ListSensorStatistics' {ingestionJobId} -> ingestionJobId) (\s@ListSensorStatistics' {} a -> s {ingestionJobId = a} :: ListSensorStatistics)

-- | An opaque pagination token indicating where to continue the listing of
-- sensor statistics.
listSensorStatistics_nextToken :: Lens.Lens' ListSensorStatistics (Prelude.Maybe Prelude.Text)
listSensorStatistics_nextToken = Lens.lens (\ListSensorStatistics' {nextToken} -> nextToken) (\s@ListSensorStatistics' {} a -> s {nextToken = a} :: ListSensorStatistics)

-- | Specifies the maximum number of sensors for which to retrieve
-- statistics.
listSensorStatistics_maxResults :: Lens.Lens' ListSensorStatistics (Prelude.Maybe Prelude.Natural)
listSensorStatistics_maxResults = Lens.lens (\ListSensorStatistics' {maxResults} -> maxResults) (\s@ListSensorStatistics' {} a -> s {maxResults = a} :: ListSensorStatistics)

-- | The name of the dataset associated with the list of Sensor Statistics.
listSensorStatistics_datasetName :: Lens.Lens' ListSensorStatistics Prelude.Text
listSensorStatistics_datasetName = Lens.lens (\ListSensorStatistics' {datasetName} -> datasetName) (\s@ListSensorStatistics' {} a -> s {datasetName = a} :: ListSensorStatistics)

instance Core.AWSRequest ListSensorStatistics where
  type
    AWSResponse ListSensorStatistics =
      ListSensorStatisticsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSensorStatisticsResponse'
            Prelude.<$> ( x Core..?> "SensorStatisticsSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSensorStatistics where
  hashWithSalt _salt ListSensorStatistics' {..} =
    _salt `Prelude.hashWithSalt` ingestionJobId
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` datasetName

instance Prelude.NFData ListSensorStatistics where
  rnf ListSensorStatistics' {..} =
    Prelude.rnf ingestionJobId
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf datasetName

instance Core.ToHeaders ListSensorStatistics where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLookoutEquipmentFrontendService.ListSensorStatistics" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListSensorStatistics where
  toJSON ListSensorStatistics' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IngestionJobId" Core..=)
              Prelude.<$> ingestionJobId,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            Prelude.Just ("DatasetName" Core..= datasetName)
          ]
      )

instance Core.ToPath ListSensorStatistics where
  toPath = Prelude.const "/"

instance Core.ToQuery ListSensorStatistics where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSensorStatisticsResponse' smart constructor.
data ListSensorStatisticsResponse = ListSensorStatisticsResponse'
  { -- | Provides ingestion-based statistics regarding the specified sensor with
    -- respect to various validation types, such as whether data exists, the
    -- number and percentage of missing values, and the number and percentage
    -- of duplicate timestamps.
    sensorStatisticsSummaries :: Prelude.Maybe [SensorStatisticsSummary],
    -- | An opaque pagination token indicating where to continue the listing of
    -- sensor statistics.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListSensorStatisticsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sensorStatisticsSummaries', 'listSensorStatisticsResponse_sensorStatisticsSummaries' - Provides ingestion-based statistics regarding the specified sensor with
-- respect to various validation types, such as whether data exists, the
-- number and percentage of missing values, and the number and percentage
-- of duplicate timestamps.
--
-- 'nextToken', 'listSensorStatisticsResponse_nextToken' - An opaque pagination token indicating where to continue the listing of
-- sensor statistics.
--
-- 'httpStatus', 'listSensorStatisticsResponse_httpStatus' - The response's http status code.
newListSensorStatisticsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSensorStatisticsResponse
newListSensorStatisticsResponse pHttpStatus_ =
  ListSensorStatisticsResponse'
    { sensorStatisticsSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Provides ingestion-based statistics regarding the specified sensor with
-- respect to various validation types, such as whether data exists, the
-- number and percentage of missing values, and the number and percentage
-- of duplicate timestamps.
listSensorStatisticsResponse_sensorStatisticsSummaries :: Lens.Lens' ListSensorStatisticsResponse (Prelude.Maybe [SensorStatisticsSummary])
listSensorStatisticsResponse_sensorStatisticsSummaries = Lens.lens (\ListSensorStatisticsResponse' {sensorStatisticsSummaries} -> sensorStatisticsSummaries) (\s@ListSensorStatisticsResponse' {} a -> s {sensorStatisticsSummaries = a} :: ListSensorStatisticsResponse) Prelude.. Lens.mapping Lens.coerced

-- | An opaque pagination token indicating where to continue the listing of
-- sensor statistics.
listSensorStatisticsResponse_nextToken :: Lens.Lens' ListSensorStatisticsResponse (Prelude.Maybe Prelude.Text)
listSensorStatisticsResponse_nextToken = Lens.lens (\ListSensorStatisticsResponse' {nextToken} -> nextToken) (\s@ListSensorStatisticsResponse' {} a -> s {nextToken = a} :: ListSensorStatisticsResponse)

-- | The response's http status code.
listSensorStatisticsResponse_httpStatus :: Lens.Lens' ListSensorStatisticsResponse Prelude.Int
listSensorStatisticsResponse_httpStatus = Lens.lens (\ListSensorStatisticsResponse' {httpStatus} -> httpStatus) (\s@ListSensorStatisticsResponse' {} a -> s {httpStatus = a} :: ListSensorStatisticsResponse)

instance Prelude.NFData ListSensorStatisticsResponse where
  rnf ListSensorStatisticsResponse' {..} =
    Prelude.rnf sensorStatisticsSummaries
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf httpStatus
