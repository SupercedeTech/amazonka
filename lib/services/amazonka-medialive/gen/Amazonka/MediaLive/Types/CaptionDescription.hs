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
-- Module      : Amazonka.MediaLive.Types.CaptionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.CaptionDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.AccessibilityType
import Amazonka.MediaLive.Types.CaptionDestinationSettings
import qualified Amazonka.Prelude as Prelude

-- | Caption Description
--
-- /See:/ 'newCaptionDescription' smart constructor.
data CaptionDescription = CaptionDescription'
  { -- | Indicates whether the caption track implements accessibility features
    -- such as written descriptions of spoken dialog, music, and sounds.
    accessibility :: Prelude.Maybe AccessibilityType,
    -- | Human readable information to indicate captions available for players
    -- (eg. English, or Spanish).
    languageDescription :: Prelude.Maybe Prelude.Text,
    -- | ISO 639-2 three-digit code: http:\/\/www.loc.gov\/standards\/iso639-2\/
    languageCode :: Prelude.Maybe Prelude.Text,
    -- | Additional settings for captions destination that depend on the
    -- destination type.
    destinationSettings :: Prelude.Maybe CaptionDestinationSettings,
    -- | Specifies which input caption selector to use as a caption source when
    -- generating output captions. This field should match a captionSelector
    -- name.
    captionSelectorName :: Prelude.Text,
    -- | Name of the caption description. Used to associate a caption description
    -- with an output. Names must be unique within an event.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CaptionDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessibility', 'captionDescription_accessibility' - Indicates whether the caption track implements accessibility features
-- such as written descriptions of spoken dialog, music, and sounds.
--
-- 'languageDescription', 'captionDescription_languageDescription' - Human readable information to indicate captions available for players
-- (eg. English, or Spanish).
--
-- 'languageCode', 'captionDescription_languageCode' - ISO 639-2 three-digit code: http:\/\/www.loc.gov\/standards\/iso639-2\/
--
-- 'destinationSettings', 'captionDescription_destinationSettings' - Additional settings for captions destination that depend on the
-- destination type.
--
-- 'captionSelectorName', 'captionDescription_captionSelectorName' - Specifies which input caption selector to use as a caption source when
-- generating output captions. This field should match a captionSelector
-- name.
--
-- 'name', 'captionDescription_name' - Name of the caption description. Used to associate a caption description
-- with an output. Names must be unique within an event.
newCaptionDescription ::
  -- | 'captionSelectorName'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CaptionDescription
newCaptionDescription pCaptionSelectorName_ pName_ =
  CaptionDescription'
    { accessibility =
        Prelude.Nothing,
      languageDescription = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      destinationSettings = Prelude.Nothing,
      captionSelectorName = pCaptionSelectorName_,
      name = pName_
    }

-- | Indicates whether the caption track implements accessibility features
-- such as written descriptions of spoken dialog, music, and sounds.
captionDescription_accessibility :: Lens.Lens' CaptionDescription (Prelude.Maybe AccessibilityType)
captionDescription_accessibility = Lens.lens (\CaptionDescription' {accessibility} -> accessibility) (\s@CaptionDescription' {} a -> s {accessibility = a} :: CaptionDescription)

-- | Human readable information to indicate captions available for players
-- (eg. English, or Spanish).
captionDescription_languageDescription :: Lens.Lens' CaptionDescription (Prelude.Maybe Prelude.Text)
captionDescription_languageDescription = Lens.lens (\CaptionDescription' {languageDescription} -> languageDescription) (\s@CaptionDescription' {} a -> s {languageDescription = a} :: CaptionDescription)

-- | ISO 639-2 three-digit code: http:\/\/www.loc.gov\/standards\/iso639-2\/
captionDescription_languageCode :: Lens.Lens' CaptionDescription (Prelude.Maybe Prelude.Text)
captionDescription_languageCode = Lens.lens (\CaptionDescription' {languageCode} -> languageCode) (\s@CaptionDescription' {} a -> s {languageCode = a} :: CaptionDescription)

-- | Additional settings for captions destination that depend on the
-- destination type.
captionDescription_destinationSettings :: Lens.Lens' CaptionDescription (Prelude.Maybe CaptionDestinationSettings)
captionDescription_destinationSettings = Lens.lens (\CaptionDescription' {destinationSettings} -> destinationSettings) (\s@CaptionDescription' {} a -> s {destinationSettings = a} :: CaptionDescription)

-- | Specifies which input caption selector to use as a caption source when
-- generating output captions. This field should match a captionSelector
-- name.
captionDescription_captionSelectorName :: Lens.Lens' CaptionDescription Prelude.Text
captionDescription_captionSelectorName = Lens.lens (\CaptionDescription' {captionSelectorName} -> captionSelectorName) (\s@CaptionDescription' {} a -> s {captionSelectorName = a} :: CaptionDescription)

-- | Name of the caption description. Used to associate a caption description
-- with an output. Names must be unique within an event.
captionDescription_name :: Lens.Lens' CaptionDescription Prelude.Text
captionDescription_name = Lens.lens (\CaptionDescription' {name} -> name) (\s@CaptionDescription' {} a -> s {name = a} :: CaptionDescription)

instance Core.FromJSON CaptionDescription where
  parseJSON =
    Core.withObject
      "CaptionDescription"
      ( \x ->
          CaptionDescription'
            Prelude.<$> (x Core..:? "accessibility")
            Prelude.<*> (x Core..:? "languageDescription")
            Prelude.<*> (x Core..:? "languageCode")
            Prelude.<*> (x Core..:? "destinationSettings")
            Prelude.<*> (x Core..: "captionSelectorName")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable CaptionDescription where
  hashWithSalt _salt CaptionDescription' {..} =
    _salt `Prelude.hashWithSalt` accessibility
      `Prelude.hashWithSalt` languageDescription
      `Prelude.hashWithSalt` languageCode
      `Prelude.hashWithSalt` destinationSettings
      `Prelude.hashWithSalt` captionSelectorName
      `Prelude.hashWithSalt` name

instance Prelude.NFData CaptionDescription where
  rnf CaptionDescription' {..} =
    Prelude.rnf accessibility
      `Prelude.seq` Prelude.rnf languageDescription
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf destinationSettings
      `Prelude.seq` Prelude.rnf captionSelectorName
      `Prelude.seq` Prelude.rnf name

instance Core.ToJSON CaptionDescription where
  toJSON CaptionDescription' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accessibility" Core..=) Prelude.<$> accessibility,
            ("languageDescription" Core..=)
              Prelude.<$> languageDescription,
            ("languageCode" Core..=) Prelude.<$> languageCode,
            ("destinationSettings" Core..=)
              Prelude.<$> destinationSettings,
            Prelude.Just
              ("captionSelectorName" Core..= captionSelectorName),
            Prelude.Just ("name" Core..= name)
          ]
      )
