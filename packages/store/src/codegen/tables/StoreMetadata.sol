// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "../../IStore.sol";
import { StoreSwitch } from "../../StoreSwitch.sol";
import { StoreCore } from "../../StoreCore.sol";
import { Bytes } from "../../Bytes.sol";
import { Memory } from "../../Memory.sol";
import { SliceLib } from "../../Slice.sol";
import { EncodeArray } from "../../tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "../../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../../PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16("mudstore"), bytes16("StoreMetadata")));
bytes32 constant StoreMetadataTableId = _tableId;

struct StoreMetadataData {
  string tableName;
  bytes abiEncodedFieldNames;
}

library StoreMetadata {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](2);
    _schema[0] = SchemaType.STRING;
    _schema[1] = SchemaType.BYTES;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](2);
    _fieldNames[0] = "tableName";
    _fieldNames[1] = "abiEncodedFieldNames";
    return ("StoreMetadata", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get tableName */
  function getTableName(bytes32 tableId) internal view returns (string memory tableName) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (string(_blob));
  }

  /** Get tableName (using the specified store) */
  function getTableName(IStore _store, bytes32 tableId) internal view returns (string memory tableName) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (string(_blob));
  }

  /** Set tableName */
  function setTableName(bytes32 tableId, string memory tableName) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.setField(_tableId, _keyTuple, 0, bytes((tableName)));
  }

  /** Set tableName (using the specified store) */
  function setTableName(IStore _store, bytes32 tableId, string memory tableName) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.setField(_tableId, _keyTuple, 0, bytes((tableName)));
  }

  /** Get the length of tableName */
  function lengthTableName(bytes32 tableId) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 0, getSchema());
    unchecked {
      return _byteLength / 1;
    }
  }

  /** Get the length of tableName (using the specified store) */
  function lengthTableName(IStore _store, bytes32 tableId) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 0, getSchema());
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * Get an item of tableName
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemTableName(bytes32 tableId, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 0, getSchema(), _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /**
   * Get an item of tableName (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemTableName(IStore _store, bytes32 tableId, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 0, getSchema(), _index * 1, (_index + 1) * 1);
      return (string(_blob));
    }
  }

  /** Push a slice to tableName */
  function pushTableName(bytes32 tableId, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.pushToField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /** Push a slice to tableName (using the specified store) */
  function pushTableName(IStore _store, bytes32 tableId, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.pushToField(_tableId, _keyTuple, 0, bytes((_slice)));
  }

  /** Pop a slice from tableName */
  function popTableName(bytes32 tableId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.popFromField(_tableId, _keyTuple, 0, 1);
  }

  /** Pop a slice from tableName (using the specified store) */
  function popTableName(IStore _store, bytes32 tableId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.popFromField(_tableId, _keyTuple, 0, 1);
  }

  /**
   * Update a slice of tableName at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateTableName(bytes32 tableId, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 0, _index * 1, bytes((_slice)));
    }
  }

  /**
   * Update a slice of tableName (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateTableName(IStore _store, bytes32 tableId, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 0, _index * 1, bytes((_slice)));
    }
  }

  /** Get abiEncodedFieldNames */
  function getAbiEncodedFieldNames(bytes32 tableId) internal view returns (bytes memory abiEncodedFieldNames) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (bytes(_blob));
  }

  /** Get abiEncodedFieldNames (using the specified store) */
  function getAbiEncodedFieldNames(
    IStore _store,
    bytes32 tableId
  ) internal view returns (bytes memory abiEncodedFieldNames) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (bytes(_blob));
  }

  /** Set abiEncodedFieldNames */
  function setAbiEncodedFieldNames(bytes32 tableId, bytes memory abiEncodedFieldNames) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.setField(_tableId, _keyTuple, 1, bytes((abiEncodedFieldNames)));
  }

  /** Set abiEncodedFieldNames (using the specified store) */
  function setAbiEncodedFieldNames(IStore _store, bytes32 tableId, bytes memory abiEncodedFieldNames) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.setField(_tableId, _keyTuple, 1, bytes((abiEncodedFieldNames)));
  }

  /** Get the length of abiEncodedFieldNames */
  function lengthAbiEncodedFieldNames(bytes32 tableId) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 1, getSchema());
    unchecked {
      return _byteLength / 1;
    }
  }

  /** Get the length of abiEncodedFieldNames (using the specified store) */
  function lengthAbiEncodedFieldNames(IStore _store, bytes32 tableId) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 1, getSchema());
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * Get an item of abiEncodedFieldNames
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemAbiEncodedFieldNames(bytes32 tableId, uint256 _index) internal view returns (bytes memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 1, getSchema(), _index * 1, (_index + 1) * 1);
      return (bytes(_blob));
    }
  }

  /**
   * Get an item of abiEncodedFieldNames (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemAbiEncodedFieldNames(
    IStore _store,
    bytes32 tableId,
    uint256 _index
  ) internal view returns (bytes memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 1, getSchema(), _index * 1, (_index + 1) * 1);
      return (bytes(_blob));
    }
  }

  /** Push a slice to abiEncodedFieldNames */
  function pushAbiEncodedFieldNames(bytes32 tableId, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.pushToField(_tableId, _keyTuple, 1, bytes((_slice)));
  }

  /** Push a slice to abiEncodedFieldNames (using the specified store) */
  function pushAbiEncodedFieldNames(IStore _store, bytes32 tableId, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.pushToField(_tableId, _keyTuple, 1, bytes((_slice)));
  }

  /** Pop a slice from abiEncodedFieldNames */
  function popAbiEncodedFieldNames(bytes32 tableId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.popFromField(_tableId, _keyTuple, 1, 1);
  }

  /** Pop a slice from abiEncodedFieldNames (using the specified store) */
  function popAbiEncodedFieldNames(IStore _store, bytes32 tableId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.popFromField(_tableId, _keyTuple, 1, 1);
  }

  /**
   * Update a slice of abiEncodedFieldNames at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateAbiEncodedFieldNames(bytes32 tableId, uint256 _index, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 1, _index * 1, bytes((_slice)));
    }
  }

  /**
   * Update a slice of abiEncodedFieldNames (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateAbiEncodedFieldNames(IStore _store, bytes32 tableId, uint256 _index, bytes memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 1, _index * 1, bytes((_slice)));
    }
  }

  /** Get the full data */
  function get(bytes32 tableId) internal view returns (StoreMetadataData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 tableId) internal view returns (StoreMetadataData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 tableId, string memory tableName, bytes memory abiEncodedFieldNames) internal {
    bytes memory _data = encode(tableName, abiEncodedFieldNames);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, bytes32 tableId, string memory tableName, bytes memory abiEncodedFieldNames) internal {
    bytes memory _data = encode(tableName, abiEncodedFieldNames);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 tableId, StoreMetadataData memory _table) internal {
    set(tableId, _table.tableName, _table.abiEncodedFieldNames);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 tableId, StoreMetadataData memory _table) internal {
    set(_store, tableId, _table.tableName, _table.abiEncodedFieldNames);
  }

  /**
   * Decode the tightly packed blob using this table's schema.
   * Undefined behaviour for invalid blobs.
   */
  function decode(bytes memory _blob) internal pure returns (StoreMetadataData memory _table) {
    // 0 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 0));

    // Store trims the blob if dynamic fields are all empty
    if (_blob.length > 0) {
      // skip static data length + dynamic lengths word
      uint256 _start = 32;
      uint256 _end;
      unchecked {
        _end = 32 + _encodedLengths.atIndex(0);
      }
      _table.tableName = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));

      _start = _end;
      unchecked {
        _end += _encodedLengths.atIndex(1);
      }
      _table.abiEncodedFieldNames = (bytes(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
    }
  }

  /** Tightly pack full data using this table's schema */
  function encode(string memory tableName, bytes memory abiEncodedFieldNames) internal pure returns (bytes memory) {
    uint40[] memory _counters = new uint40[](2);
    _counters[0] = uint40(bytes(tableName).length);
    _counters[1] = uint40(bytes(abiEncodedFieldNames).length);
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);

    return abi.encodePacked(_encodedLengths.unwrap(), bytes((tableName)), bytes((abiEncodedFieldNames)));
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 tableId) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 tableId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 tableId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = tableId;

    _store.deleteRecord(_tableId, _keyTuple);
  }
}
