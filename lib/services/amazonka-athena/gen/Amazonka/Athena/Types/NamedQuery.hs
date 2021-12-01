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
-- Module      : Amazonka.Athena.Types.NamedQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Athena.Types.NamedQuery where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A query, where @QueryString@ is the list of SQL query statements that
-- comprise the query.
--
-- /See:/ 'newNamedQuery' smart constructor.
data NamedQuery = NamedQuery'
  { -- | The unique identifier of the query.
    namedQueryId :: Prelude.Maybe Prelude.Text,
    -- | The query description.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the workgroup that contains the named query.
    workGroup :: Prelude.Maybe Prelude.Text,
    -- | The query name.
    name :: Prelude.Text,
    -- | The database to which the query belongs.
    database :: Prelude.Text,
    -- | The SQL query statements that comprise the query.
    queryString :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NamedQuery' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namedQueryId', 'namedQuery_namedQueryId' - The unique identifier of the query.
--
-- 'description', 'namedQuery_description' - The query description.
--
-- 'workGroup', 'namedQuery_workGroup' - The name of the workgroup that contains the named query.
--
-- 'name', 'namedQuery_name' - The query name.
--
-- 'database', 'namedQuery_database' - The database to which the query belongs.
--
-- 'queryString', 'namedQuery_queryString' - The SQL query statements that comprise the query.
newNamedQuery ::
  -- | 'name'
  Prelude.Text ->
  -- | 'database'
  Prelude.Text ->
  -- | 'queryString'
  Prelude.Text ->
  NamedQuery
newNamedQuery pName_ pDatabase_ pQueryString_ =
  NamedQuery'
    { namedQueryId = Prelude.Nothing,
      description = Prelude.Nothing,
      workGroup = Prelude.Nothing,
      name = pName_,
      database = pDatabase_,
      queryString = pQueryString_
    }

-- | The unique identifier of the query.
namedQuery_namedQueryId :: Lens.Lens' NamedQuery (Prelude.Maybe Prelude.Text)
namedQuery_namedQueryId = Lens.lens (\NamedQuery' {namedQueryId} -> namedQueryId) (\s@NamedQuery' {} a -> s {namedQueryId = a} :: NamedQuery)

-- | The query description.
namedQuery_description :: Lens.Lens' NamedQuery (Prelude.Maybe Prelude.Text)
namedQuery_description = Lens.lens (\NamedQuery' {description} -> description) (\s@NamedQuery' {} a -> s {description = a} :: NamedQuery)

-- | The name of the workgroup that contains the named query.
namedQuery_workGroup :: Lens.Lens' NamedQuery (Prelude.Maybe Prelude.Text)
namedQuery_workGroup = Lens.lens (\NamedQuery' {workGroup} -> workGroup) (\s@NamedQuery' {} a -> s {workGroup = a} :: NamedQuery)

-- | The query name.
namedQuery_name :: Lens.Lens' NamedQuery Prelude.Text
namedQuery_name = Lens.lens (\NamedQuery' {name} -> name) (\s@NamedQuery' {} a -> s {name = a} :: NamedQuery)

-- | The database to which the query belongs.
namedQuery_database :: Lens.Lens' NamedQuery Prelude.Text
namedQuery_database = Lens.lens (\NamedQuery' {database} -> database) (\s@NamedQuery' {} a -> s {database = a} :: NamedQuery)

-- | The SQL query statements that comprise the query.
namedQuery_queryString :: Lens.Lens' NamedQuery Prelude.Text
namedQuery_queryString = Lens.lens (\NamedQuery' {queryString} -> queryString) (\s@NamedQuery' {} a -> s {queryString = a} :: NamedQuery)

instance Core.FromJSON NamedQuery where
  parseJSON =
    Core.withObject
      "NamedQuery"
      ( \x ->
          NamedQuery'
            Prelude.<$> (x Core..:? "NamedQueryId")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "WorkGroup")
            Prelude.<*> (x Core..: "Name")
            Prelude.<*> (x Core..: "Database")
            Prelude.<*> (x Core..: "QueryString")
      )

instance Prelude.Hashable NamedQuery where
  hashWithSalt salt' NamedQuery' {..} =
    salt' `Prelude.hashWithSalt` queryString
      `Prelude.hashWithSalt` database
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` workGroup
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` namedQueryId

instance Prelude.NFData NamedQuery where
  rnf NamedQuery' {..} =
    Prelude.rnf namedQueryId
      `Prelude.seq` Prelude.rnf queryString
      `Prelude.seq` Prelude.rnf database
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf workGroup
      `Prelude.seq` Prelude.rnf description
