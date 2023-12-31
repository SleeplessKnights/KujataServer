/*
===========================================================================

Copyright (c) 2023 LandSandBoat Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#include "daily_tally.h"

namespace dailytally
{
    void UpdateDailyTallyPoints(std::unique_ptr<SqlConnection> const& sql)
    {
        uint16 dailyTallyLimit  = settings::get<uint16>("main.DAILY_TALLY_LIMIT");
        uint16 dailyTallyAmount = settings::get<uint16>("main.DAILY_TALLY_AMOUNT");

        const char* fmtQuery = "UPDATE char_points \
            SET char_points.daily_tally = LEAST(%u, char_points.daily_tally + %u) \
            WHERE char_points.daily_tally > -1;";

        int32 ret = sql->Query(fmtQuery, dailyTallyLimit, dailyTallyAmount);

        if (ret == SQL_ERROR)
        {
            ShowError("Failed to update daily tally points");
        }
        else
        {
            ShowDebug("Distributed daily tally points");
        }

        fmtQuery = "DELETE FROM char_vars WHERE varname = 'gobbieBoxUsed';";

        if (sql->Query(fmtQuery, dailyTallyAmount) == SQL_ERROR)
        {
            ShowError("Failed to delete daily tally char_vars entries");
        }
    }
} // namespace dailytally
