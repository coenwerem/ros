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

class ultRangerData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.ECHO = null;
      this.TRIG = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('ECHO')) {
        this.ECHO = initObj.ECHO
      }
      else {
        this.ECHO = 0;
      }
      if (initObj.hasOwnProperty('TRIG')) {
        this.TRIG = initObj.TRIG
      }
      else {
        this.TRIG = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultRangerData
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [ECHO]
    bufferOffset = _serializer.int64(obj.ECHO, buffer, bufferOffset);
    // Serialize message field [TRIG]
    bufferOffset = _serializer.int64(obj.TRIG, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultRangerData
    let len;
    let data = new ultRangerData(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ECHO]
    data.ECHO = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [TRIG]
    data.TRIG = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_world/ultRangerData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '977bed47f562a4bff3f01c6a45d8dc10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    int64 ECHO
    int64 TRIG
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ultRangerData(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.ECHO !== undefined) {
      resolved.ECHO = msg.ECHO;
    }
    else {
      resolved.ECHO = 0
    }

    if (msg.TRIG !== undefined) {
      resolved.TRIG = msg.TRIG;
    }
    else {
      resolved.TRIG = 0
    }

    return resolved;
    }
};

module.exports = ultRangerData;
