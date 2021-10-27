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
-- Module      : Network.AWS.RobOMaker.ListWorldGenerationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists world generator jobs.
--
-- This operation returns paginated results.
module Network.AWS.RobOMaker.ListWorldGenerationJobs
  ( -- * Creating a Request
    ListWorldGenerationJobs (..),
    newListWorldGenerationJobs,

    -- * Request Lenses
    listWorldGenerationJobs_filters,
    listWorldGenerationJobs_nextToken,
    listWorldGenerationJobs_maxResults,

    -- * Destructuring the Response
    ListWorldGenerationJobsResponse (..),
    newListWorldGenerationJobsResponse,

    -- * Response Lenses
    listWorldGenerationJobsResponse_nextToken,
    listWorldGenerationJobsResponse_httpStatus,
    listWorldGenerationJobsResponse_worldGenerationJobSummaries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.RobOMaker.Types

-- | /See:/ 'newListWorldGenerationJobs' smart constructor.
data ListWorldGenerationJobs = ListWorldGenerationJobs'
  { -- | Optional filters to limit results. You can use @status@ and
    -- @templateId@.
    filters :: Prelude.Maybe (Prelude.NonEmpty Filter),
    -- | If the previous paginated request did not return all of the remaining
    -- results, the response object\'s @nextToken@ parameter value is set to a
    -- token. To retrieve the next set of results, call
    -- @ListWorldGenerationJobsRequest@ again and assign that token to the
    -- request object\'s @nextToken@ parameter. If there are no remaining
    -- results, the previous response object\'s NextToken parameter is set to
    -- null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | When this parameter is used, @ListWorldGeneratorJobs@ only returns
    -- @maxResults@ results in a single page along with a @nextToken@ response
    -- element. The remaining results of the initial request can be seen by
    -- sending another @ListWorldGeneratorJobs@ request with the returned
    -- @nextToken@ value. This value can be between 1 and 100. If this
    -- parameter is not used, then @ListWorldGeneratorJobs@ returns up to 100
    -- results and a @nextToken@ value if applicable.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorldGenerationJobs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'listWorldGenerationJobs_filters' - Optional filters to limit results. You can use @status@ and
-- @templateId@.
--
-- 'nextToken', 'listWorldGenerationJobs_nextToken' - If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call
-- @ListWorldGenerationJobsRequest@ again and assign that token to the
-- request object\'s @nextToken@ parameter. If there are no remaining
-- results, the previous response object\'s NextToken parameter is set to
-- null.
--
-- 'maxResults', 'listWorldGenerationJobs_maxResults' - When this parameter is used, @ListWorldGeneratorJobs@ only returns
-- @maxResults@ results in a single page along with a @nextToken@ response
-- element. The remaining results of the initial request can be seen by
-- sending another @ListWorldGeneratorJobs@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If this
-- parameter is not used, then @ListWorldGeneratorJobs@ returns up to 100
-- results and a @nextToken@ value if applicable.
newListWorldGenerationJobs ::
  ListWorldGenerationJobs
newListWorldGenerationJobs =
  ListWorldGenerationJobs'
    { filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | Optional filters to limit results. You can use @status@ and
-- @templateId@.
listWorldGenerationJobs_filters :: Lens.Lens' ListWorldGenerationJobs (Prelude.Maybe (Prelude.NonEmpty Filter))
listWorldGenerationJobs_filters = Lens.lens (\ListWorldGenerationJobs' {filters} -> filters) (\s@ListWorldGenerationJobs' {} a -> s {filters = a} :: ListWorldGenerationJobs) Prelude.. Lens.mapping Lens.coerced

-- | If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call
-- @ListWorldGenerationJobsRequest@ again and assign that token to the
-- request object\'s @nextToken@ parameter. If there are no remaining
-- results, the previous response object\'s NextToken parameter is set to
-- null.
listWorldGenerationJobs_nextToken :: Lens.Lens' ListWorldGenerationJobs (Prelude.Maybe Prelude.Text)
listWorldGenerationJobs_nextToken = Lens.lens (\ListWorldGenerationJobs' {nextToken} -> nextToken) (\s@ListWorldGenerationJobs' {} a -> s {nextToken = a} :: ListWorldGenerationJobs)

-- | When this parameter is used, @ListWorldGeneratorJobs@ only returns
-- @maxResults@ results in a single page along with a @nextToken@ response
-- element. The remaining results of the initial request can be seen by
-- sending another @ListWorldGeneratorJobs@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If this
-- parameter is not used, then @ListWorldGeneratorJobs@ returns up to 100
-- results and a @nextToken@ value if applicable.
listWorldGenerationJobs_maxResults :: Lens.Lens' ListWorldGenerationJobs (Prelude.Maybe Prelude.Int)
listWorldGenerationJobs_maxResults = Lens.lens (\ListWorldGenerationJobs' {maxResults} -> maxResults) (\s@ListWorldGenerationJobs' {} a -> s {maxResults = a} :: ListWorldGenerationJobs)

instance Core.AWSPager ListWorldGenerationJobs where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listWorldGenerationJobsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^. listWorldGenerationJobsResponse_worldGenerationJobSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listWorldGenerationJobs_nextToken
          Lens..~ rs
          Lens.^? listWorldGenerationJobsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListWorldGenerationJobs where
  type
    AWSResponse ListWorldGenerationJobs =
      ListWorldGenerationJobsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListWorldGenerationJobsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Core..?> "worldGenerationJobSummaries"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListWorldGenerationJobs

instance Prelude.NFData ListWorldGenerationJobs

instance Core.ToHeaders ListWorldGenerationJobs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListWorldGenerationJobs where
  toJSON ListWorldGenerationJobs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("filters" Core..=) Prelude.<$> filters,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListWorldGenerationJobs where
  toPath = Prelude.const "/listWorldGenerationJobs"

instance Core.ToQuery ListWorldGenerationJobs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListWorldGenerationJobsResponse' smart constructor.
data ListWorldGenerationJobsResponse = ListWorldGenerationJobsResponse'
  { -- | If the previous paginated request did not return all of the remaining
    -- results, the response object\'s @nextToken@ parameter value is set to a
    -- token. To retrieve the next set of results, call
    -- @ListWorldGeneratorJobsRequest@ again and assign that token to the
    -- request object\'s @nextToken@ parameter. If there are no remaining
    -- results, the previous response object\'s NextToken parameter is set to
    -- null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Summary information for world generator jobs.
    worldGenerationJobSummaries :: [WorldGenerationJobSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListWorldGenerationJobsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listWorldGenerationJobsResponse_nextToken' - If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call
-- @ListWorldGeneratorJobsRequest@ again and assign that token to the
-- request object\'s @nextToken@ parameter. If there are no remaining
-- results, the previous response object\'s NextToken parameter is set to
-- null.
--
-- 'httpStatus', 'listWorldGenerationJobsResponse_httpStatus' - The response's http status code.
--
-- 'worldGenerationJobSummaries', 'listWorldGenerationJobsResponse_worldGenerationJobSummaries' - Summary information for world generator jobs.
newListWorldGenerationJobsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListWorldGenerationJobsResponse
newListWorldGenerationJobsResponse pHttpStatus_ =
  ListWorldGenerationJobsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      worldGenerationJobSummaries =
        Prelude.mempty
    }

-- | If the previous paginated request did not return all of the remaining
-- results, the response object\'s @nextToken@ parameter value is set to a
-- token. To retrieve the next set of results, call
-- @ListWorldGeneratorJobsRequest@ again and assign that token to the
-- request object\'s @nextToken@ parameter. If there are no remaining
-- results, the previous response object\'s NextToken parameter is set to
-- null.
listWorldGenerationJobsResponse_nextToken :: Lens.Lens' ListWorldGenerationJobsResponse (Prelude.Maybe Prelude.Text)
listWorldGenerationJobsResponse_nextToken = Lens.lens (\ListWorldGenerationJobsResponse' {nextToken} -> nextToken) (\s@ListWorldGenerationJobsResponse' {} a -> s {nextToken = a} :: ListWorldGenerationJobsResponse)

-- | The response's http status code.
listWorldGenerationJobsResponse_httpStatus :: Lens.Lens' ListWorldGenerationJobsResponse Prelude.Int
listWorldGenerationJobsResponse_httpStatus = Lens.lens (\ListWorldGenerationJobsResponse' {httpStatus} -> httpStatus) (\s@ListWorldGenerationJobsResponse' {} a -> s {httpStatus = a} :: ListWorldGenerationJobsResponse)

-- | Summary information for world generator jobs.
listWorldGenerationJobsResponse_worldGenerationJobSummaries :: Lens.Lens' ListWorldGenerationJobsResponse [WorldGenerationJobSummary]
listWorldGenerationJobsResponse_worldGenerationJobSummaries = Lens.lens (\ListWorldGenerationJobsResponse' {worldGenerationJobSummaries} -> worldGenerationJobSummaries) (\s@ListWorldGenerationJobsResponse' {} a -> s {worldGenerationJobSummaries = a} :: ListWorldGenerationJobsResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    ListWorldGenerationJobsResponse
