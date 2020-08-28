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

class motorDriver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ENABLE_A = null;
      this.ENABLE_B = null;
      this.dir1 = null;
      this.dir2 = null;
      this.dir3 = null;
      this.dir4 = null;
    }
    else {
      if (initObj.hasOwnProperty('ENABLE_A')) {
        this.ENABLE_A = initObj.ENABLE_A
      }
      else {
        this.ENABLE_A = 0;
      }
      if (initObj.hasOwnProperty('ENABLE_B')) {
        this.ENABLE_B = initObj.ENABLE_B
      }
      else {
        this.ENABLE_B = 0;
      }
      if (initObj.hasOwnProperty('dir1')) {
        this.dir1 = initObj.dir1
      }
      else {
        this.dir1 = 0;
      }
      if (initObj.hasOwnProperty('dir2')) {
        this.dir2 = initObj.dir2
      }
      else {
        this.dir2 = 0;
      }
      if (initObj.hasOwnProperty('dir3')) {
        this.dir3 = initObj.dir3
      }
      else {
        this.dir3 = 0;
      }
      if (initObj.hasOwnProperty('dir4')) {
        this.dir4 = initObj.dir4
      }
      else {
        this.dir4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorDriver
    // Serialize message field [ENABLE_A]
    bufferOffset = _serializer.int64(obj.ENABLE_A, buffer, bufferOffset);
    // Serialize message field [ENABLE_B]
    bufferOffset = _serializer.int64(obj.ENABLE_B, buffer, bufferOffset);
    // Serialize message field [dir1]
    bufferOffset = _serializer.int64(obj.dir1, buffer, bufferOffset);
    // Serialize message field [dir2]
    bufferOffset = _serializer.int64(obj.dir2, buffer, bufferOffset);
    // Serialize message field [dir3]
    bufferOffset = _serializer.int64(obj.dir3, buffer, bufferOffset);
    // Serialize message field [dir4]
    bufferOffset = _serializer.int64(obj.dir4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorDriver
    let len;
    let data = new motorDriver(null);
    // Deserialize message field [ENABLE_A]
    data.ENABLE_A = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ENABLE_B]
    data.ENABLE_B = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dir1]
    data.dir1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dir2]
    data.dir2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dir3]
    data.dir3 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [dir4]
    data.dir4 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_world/motorDriver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c45e6bc60f8399dea1a593d7b7b6626';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ENABLE_A
    int64 ENABLE_B
    int64 dir1
    int64 dir2 
    int64 dir3
    int64 dir4 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorDriver(null);
    if (msg.ENABLE_A !== undefined) {
      resolved.ENABLE_A = msg.ENABLE_A;
    }
    else {
      resolved.ENABLE_A = 0
    }

    if (msg.ENABLE_B !== undefined) {
      resolved.ENABLE_B = msg.ENABLE_B;
    }
    else {
      resolved.ENABLE_B = 0
    }

    if (msg.dir1 !== undefined) {
      resolved.dir1 = msg.dir1;
    }
    else {
      resolved.dir1 = 0
    }

    if (msg.dir2 !== undefined) {
      resolved.dir2 = msg.dir2;
    }
    else {
      resolved.dir2 = 0
    }

    if (msg.dir3 !== undefined) {
      resolved.dir3 = msg.dir3;
    }
    else {
      resolved.dir3 = 0
    }

    if (msg.dir4 !== undefined) {
      resolved.dir4 = msg.dir4;
    }
    else {
      resolved.dir4 = 0
    }

    return resolved;
    }
};

module.exports = motorDriver;
