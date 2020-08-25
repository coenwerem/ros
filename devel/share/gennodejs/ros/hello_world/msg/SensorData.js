// Auto-generated. Do not edit!

// (in-package hello_world.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.manufacturer_name = null;
      this.distance = null;
      this.sensor_type = null;
      this.max_range = null;
      this.min_range = null;
    }
    else {
      if (initObj.hasOwnProperty('manufacturer_name')) {
        this.manufacturer_name = initObj.manufacturer_name
      }
      else {
        this.manufacturer_name = '';
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = '';
      }
      if (initObj.hasOwnProperty('max_range')) {
        this.max_range = initObj.max_range
      }
      else {
        this.max_range = 0;
      }
      if (initObj.hasOwnProperty('min_range')) {
        this.min_range = initObj.min_range
      }
      else {
        this.min_range = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorData
    // Serialize message field [manufacturer_name]
    bufferOffset = _serializer.string(obj.manufacturer_name, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.int64(obj.distance, buffer, bufferOffset);
    // Serialize message field [sensor_type]
    bufferOffset = _serializer.string(obj.sensor_type, buffer, bufferOffset);
    // Serialize message field [max_range]
    bufferOffset = _serializer.int64(obj.max_range, buffer, bufferOffset);
    // Serialize message field [min_range]
    bufferOffset = _serializer.int64(obj.min_range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorData
    let len;
    let data = new SensorData(null);
    // Deserialize message field [manufacturer_name]
    data.manufacturer_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [sensor_type]
    data.sensor_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [max_range]
    data.max_range = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [min_range]
    data.min_range = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.manufacturer_name.length;
    length += object.sensor_type.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_world/SensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a1990867dc4d7d4a1a2518817eae425';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string manufacturer_name
    int64 distance
    string sensor_type
    int64 max_range
    int64 min_range
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorData(null);
    if (msg.manufacturer_name !== undefined) {
      resolved.manufacturer_name = msg.manufacturer_name;
    }
    else {
      resolved.manufacturer_name = ''
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = ''
    }

    if (msg.max_range !== undefined) {
      resolved.max_range = msg.max_range;
    }
    else {
      resolved.max_range = 0
    }

    if (msg.min_range !== undefined) {
      resolved.min_range = msg.min_range;
    }
    else {
      resolved.min_range = 0
    }

    return resolved;
    }
};

module.exports = SensorData;
