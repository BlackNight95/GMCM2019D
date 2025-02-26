% match_group extract micro trips matching the groupid.
%
% Usage:
% matched_group = match_group(group, groupid) 

function matched_group = match_group(group, groupid)
    match = logical([]);
    for i = group
        match = cat(2, match, i.groupid == groupid);
    end
    matched_group = group(match);
end