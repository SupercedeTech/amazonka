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
-- Module      : Amazonka.GameLift.DescribeFleetLocationAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information on a fleet\'s remote locations, including
-- life-cycle status and any suspended fleet activity.
--
-- This operation can be used in the following ways:
--
-- -   To get data for specific locations, provide a fleet identifier and a
--     list of locations. Location data is returned in the order that it is
--     requested.
--
-- -   To get data for all locations, provide a fleet identifier only.
--     Location data is returned in no particular order.
--
-- When requesting attributes for multiple locations, use the pagination
-- parameters to retrieve results as a set of sequential pages.
--
-- If successful, a @LocationAttributes@ object is returned for each
-- requested location. If the fleet does not have a requested location, no
-- information is returned. This operation does not return the home Region.
-- To get information on a fleet\'s home Region, call
-- @DescribeFleetAttributes@.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift fleets>
--
-- __Related actions__
--
-- CreateFleetLocations | DescribeFleetLocationAttributes |
-- DescribeFleetLocationCapacity | DescribeFleetLocationUtilization |
-- DescribeFleetAttributes | DescribeFleetCapacity |
-- DescribeFleetUtilization | UpdateFleetCapacity | StopFleetActions |
-- DeleteFleetLocations |
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets All APIs by task>
module Amazonka.GameLift.DescribeFleetLocationAttributes
  ( -- * Creating a Request
    DescribeFleetLocationAttributes (..),
    newDescribeFleetLocationAttributes,

    -- * Request Lenses
    describeFleetLocationAttributes_nextToken,
    describeFleetLocationAttributes_limit,
    describeFleetLocationAttributes_locations,
    describeFleetLocationAttributes_fleetId,

    -- * Destructuring the Response
    DescribeFleetLocationAttributesResponse (..),
    newDescribeFleetLocationAttributesResponse,

    -- * Response Lenses
    describeFleetLocationAttributesResponse_fleetArn,
    describeFleetLocationAttributesResponse_nextToken,
    describeFleetLocationAttributesResponse_locationAttributes,
    describeFleetLocationAttributesResponse_fleetId,
    describeFleetLocationAttributesResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import Amazonka.GameLift.Types
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'newDescribeFleetLocationAttributes' smart constructor.
data DescribeFleetLocationAttributes = DescribeFleetLocationAttributes'
  { -- | A token that indicates the start of the next sequential page of results.
    -- Use the token that is returned with a previous call to this operation.
    -- To start at the beginning of the result set, do not specify a value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return. Use this parameter with
    -- @NextToken@ to get results as a set of sequential pages. This limit is
    -- not currently enforced.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | A list of fleet locations to retrieve information for. Specify locations
    -- in the form of an AWS Region code, such as @us-west-2@.
    locations :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A unique identifier for the fleet to retrieve remote locations for. You
    -- can use either the fleet ID or ARN value.
    fleetId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetLocationAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFleetLocationAttributes_nextToken' - A token that indicates the start of the next sequential page of results.
-- Use the token that is returned with a previous call to this operation.
-- To start at the beginning of the result set, do not specify a value.
--
-- 'limit', 'describeFleetLocationAttributes_limit' - The maximum number of results to return. Use this parameter with
-- @NextToken@ to get results as a set of sequential pages. This limit is
-- not currently enforced.
--
-- 'locations', 'describeFleetLocationAttributes_locations' - A list of fleet locations to retrieve information for. Specify locations
-- in the form of an AWS Region code, such as @us-west-2@.
--
-- 'fleetId', 'describeFleetLocationAttributes_fleetId' - A unique identifier for the fleet to retrieve remote locations for. You
-- can use either the fleet ID or ARN value.
newDescribeFleetLocationAttributes ::
  -- | 'fleetId'
  Prelude.Text ->
  DescribeFleetLocationAttributes
newDescribeFleetLocationAttributes pFleetId_ =
  DescribeFleetLocationAttributes'
    { nextToken =
        Prelude.Nothing,
      limit = Prelude.Nothing,
      locations = Prelude.Nothing,
      fleetId = pFleetId_
    }

-- | A token that indicates the start of the next sequential page of results.
-- Use the token that is returned with a previous call to this operation.
-- To start at the beginning of the result set, do not specify a value.
describeFleetLocationAttributes_nextToken :: Lens.Lens' DescribeFleetLocationAttributes (Prelude.Maybe Prelude.Text)
describeFleetLocationAttributes_nextToken = Lens.lens (\DescribeFleetLocationAttributes' {nextToken} -> nextToken) (\s@DescribeFleetLocationAttributes' {} a -> s {nextToken = a} :: DescribeFleetLocationAttributes)

-- | The maximum number of results to return. Use this parameter with
-- @NextToken@ to get results as a set of sequential pages. This limit is
-- not currently enforced.
describeFleetLocationAttributes_limit :: Lens.Lens' DescribeFleetLocationAttributes (Prelude.Maybe Prelude.Natural)
describeFleetLocationAttributes_limit = Lens.lens (\DescribeFleetLocationAttributes' {limit} -> limit) (\s@DescribeFleetLocationAttributes' {} a -> s {limit = a} :: DescribeFleetLocationAttributes)

-- | A list of fleet locations to retrieve information for. Specify locations
-- in the form of an AWS Region code, such as @us-west-2@.
describeFleetLocationAttributes_locations :: Lens.Lens' DescribeFleetLocationAttributes (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
describeFleetLocationAttributes_locations = Lens.lens (\DescribeFleetLocationAttributes' {locations} -> locations) (\s@DescribeFleetLocationAttributes' {} a -> s {locations = a} :: DescribeFleetLocationAttributes) Prelude.. Lens.mapping Lens.coerced

-- | A unique identifier for the fleet to retrieve remote locations for. You
-- can use either the fleet ID or ARN value.
describeFleetLocationAttributes_fleetId :: Lens.Lens' DescribeFleetLocationAttributes Prelude.Text
describeFleetLocationAttributes_fleetId = Lens.lens (\DescribeFleetLocationAttributes' {fleetId} -> fleetId) (\s@DescribeFleetLocationAttributes' {} a -> s {fleetId = a} :: DescribeFleetLocationAttributes)

instance
  Core.AWSRequest
    DescribeFleetLocationAttributes
  where
  type
    AWSResponse DescribeFleetLocationAttributes =
      DescribeFleetLocationAttributesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFleetLocationAttributesResponse'
            Prelude.<$> (x Core..?> "FleetArn")
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> ( x Core..?> "LocationAttributes"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "FleetId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeFleetLocationAttributes
  where
  hashWithSalt
    salt'
    DescribeFleetLocationAttributes' {..} =
      salt' `Prelude.hashWithSalt` fleetId
        `Prelude.hashWithSalt` locations
        `Prelude.hashWithSalt` limit
        `Prelude.hashWithSalt` nextToken

instance
  Prelude.NFData
    DescribeFleetLocationAttributes
  where
  rnf DescribeFleetLocationAttributes' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf fleetId
      `Prelude.seq` Prelude.rnf locations
      `Prelude.seq` Prelude.rnf limit

instance
  Core.ToHeaders
    DescribeFleetLocationAttributes
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GameLift.DescribeFleetLocationAttributes" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeFleetLocationAttributes where
  toJSON DescribeFleetLocationAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Limit" Core..=) Prelude.<$> limit,
            ("Locations" Core..=) Prelude.<$> locations,
            Prelude.Just ("FleetId" Core..= fleetId)
          ]
      )

instance Core.ToPath DescribeFleetLocationAttributes where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeFleetLocationAttributes where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the returned data in response to a request operation.
--
-- /See:/ 'newDescribeFleetLocationAttributesResponse' smart constructor.
data DescribeFleetLocationAttributesResponse = DescribeFleetLocationAttributesResponse'
  { -- | The Amazon Resource Name
    -- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
    -- that is assigned to a GameLift fleet resource and uniquely identifies
    -- it. ARNs are unique across all Regions. Format is
    -- @arn:aws:gamelift:\<region>::fleet\/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
    fleetArn :: Prelude.Maybe Prelude.Text,
    -- | A token that indicates where to resume retrieving results on the next
    -- call to this operation. If no token is returned, these results represent
    -- the end of the list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Location-specific information on the requested fleet\'s remote
    -- locations.
    locationAttributes :: Prelude.Maybe [LocationAttributes],
    -- | A unique identifier for the fleet that location attributes were
    -- requested for.
    fleetId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetLocationAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fleetArn', 'describeFleetLocationAttributesResponse_fleetArn' - The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- that is assigned to a GameLift fleet resource and uniquely identifies
-- it. ARNs are unique across all Regions. Format is
-- @arn:aws:gamelift:\<region>::fleet\/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
--
-- 'nextToken', 'describeFleetLocationAttributesResponse_nextToken' - A token that indicates where to resume retrieving results on the next
-- call to this operation. If no token is returned, these results represent
-- the end of the list.
--
-- 'locationAttributes', 'describeFleetLocationAttributesResponse_locationAttributes' - Location-specific information on the requested fleet\'s remote
-- locations.
--
-- 'fleetId', 'describeFleetLocationAttributesResponse_fleetId' - A unique identifier for the fleet that location attributes were
-- requested for.
--
-- 'httpStatus', 'describeFleetLocationAttributesResponse_httpStatus' - The response's http status code.
newDescribeFleetLocationAttributesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFleetLocationAttributesResponse
newDescribeFleetLocationAttributesResponse
  pHttpStatus_ =
    DescribeFleetLocationAttributesResponse'
      { fleetArn =
          Prelude.Nothing,
        nextToken = Prelude.Nothing,
        locationAttributes =
          Prelude.Nothing,
        fleetId = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- that is assigned to a GameLift fleet resource and uniquely identifies
-- it. ARNs are unique across all Regions. Format is
-- @arn:aws:gamelift:\<region>::fleet\/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
describeFleetLocationAttributesResponse_fleetArn :: Lens.Lens' DescribeFleetLocationAttributesResponse (Prelude.Maybe Prelude.Text)
describeFleetLocationAttributesResponse_fleetArn = Lens.lens (\DescribeFleetLocationAttributesResponse' {fleetArn} -> fleetArn) (\s@DescribeFleetLocationAttributesResponse' {} a -> s {fleetArn = a} :: DescribeFleetLocationAttributesResponse)

-- | A token that indicates where to resume retrieving results on the next
-- call to this operation. If no token is returned, these results represent
-- the end of the list.
describeFleetLocationAttributesResponse_nextToken :: Lens.Lens' DescribeFleetLocationAttributesResponse (Prelude.Maybe Prelude.Text)
describeFleetLocationAttributesResponse_nextToken = Lens.lens (\DescribeFleetLocationAttributesResponse' {nextToken} -> nextToken) (\s@DescribeFleetLocationAttributesResponse' {} a -> s {nextToken = a} :: DescribeFleetLocationAttributesResponse)

-- | Location-specific information on the requested fleet\'s remote
-- locations.
describeFleetLocationAttributesResponse_locationAttributes :: Lens.Lens' DescribeFleetLocationAttributesResponse (Prelude.Maybe [LocationAttributes])
describeFleetLocationAttributesResponse_locationAttributes = Lens.lens (\DescribeFleetLocationAttributesResponse' {locationAttributes} -> locationAttributes) (\s@DescribeFleetLocationAttributesResponse' {} a -> s {locationAttributes = a} :: DescribeFleetLocationAttributesResponse) Prelude.. Lens.mapping Lens.coerced

-- | A unique identifier for the fleet that location attributes were
-- requested for.
describeFleetLocationAttributesResponse_fleetId :: Lens.Lens' DescribeFleetLocationAttributesResponse (Prelude.Maybe Prelude.Text)
describeFleetLocationAttributesResponse_fleetId = Lens.lens (\DescribeFleetLocationAttributesResponse' {fleetId} -> fleetId) (\s@DescribeFleetLocationAttributesResponse' {} a -> s {fleetId = a} :: DescribeFleetLocationAttributesResponse)

-- | The response's http status code.
describeFleetLocationAttributesResponse_httpStatus :: Lens.Lens' DescribeFleetLocationAttributesResponse Prelude.Int
describeFleetLocationAttributesResponse_httpStatus = Lens.lens (\DescribeFleetLocationAttributesResponse' {httpStatus} -> httpStatus) (\s@DescribeFleetLocationAttributesResponse' {} a -> s {httpStatus = a} :: DescribeFleetLocationAttributesResponse)

instance
  Prelude.NFData
    DescribeFleetLocationAttributesResponse
  where
  rnf DescribeFleetLocationAttributesResponse' {..} =
    Prelude.rnf fleetArn
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf fleetId
      `Prelude.seq` Prelude.rnf locationAttributes
      `Prelude.seq` Prelude.rnf nextToken
