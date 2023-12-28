SELECT * from housing
###changing y to yes and n to no in solidAsVacant column
SELECT DISTINCT(SoldAsVacant)from housing
select SoldAsVacant,
CASE WHEN SoldAsVacant = 'N' then 'No'
WHEN SoldAsVacant = 'Y' THEN 'Yes'
ELSE SoldAsVacant
END
FROM housing;
UPDATE housing
SET SoldAsVacant = CASE WHEN SoldAsVacant = 'N' then 'No'
WHEN SoldAsVacant = 'Y' THEN 'Yes'
ELSE SoldAsVacant
END
###populating the propertadress and the owneraddress appropriately since there are the same
SELECT * from housing
SELECT PropertyAddress, OwnerAddress from housing
WHERE PropertyAddress = "";
UPDATE housing
SET OwnerAddress = PropertyAddress
WHERE OwnerAddress = "";
UPDATE housing
SET PropertyAddress = OwnerAddress
WHERE PropertyAddress = '';
SELECT * FROM housing
WHERE UniqueID = UniqueID
UPDATE housing
SET OwnerName = CONCAT(UPPER(SUBSTRING(OwnerName, 1, 1)), LOWER(SUBSTRING(OwnerName,1, 2)));
