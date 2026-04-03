// Auto-generated. Do not edit!

// (in-package rei_robot_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motor_speed = null;
      this.crash = null;
      this.cliff = null;
      this.ultrasound = null;
      this.smoke = null;
      this.power_voltage = null;
      this.is_charge = null;
      this.tempareture = null;
      this.relative_humidity = null;
      this.input_io = null;
      this.output_io = null;
      this.relay_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motor_speed')) {
        this.motor_speed = initObj.motor_speed
      }
      else {
        this.motor_speed = [];
      }
      if (initObj.hasOwnProperty('crash')) {
        this.crash = initObj.crash
      }
      else {
        this.crash = [];
      }
      if (initObj.hasOwnProperty('cliff')) {
        this.cliff = initObj.cliff
      }
      else {
        this.cliff = [];
      }
      if (initObj.hasOwnProperty('ultrasound')) {
        this.ultrasound = initObj.ultrasound
      }
      else {
        this.ultrasound = [];
      }
      if (initObj.hasOwnProperty('smoke')) {
        this.smoke = initObj.smoke
      }
      else {
        this.smoke = 0;
      }
      if (initObj.hasOwnProperty('power_voltage')) {
        this.power_voltage = initObj.power_voltage
      }
      else {
        this.power_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('is_charge')) {
        this.is_charge = initObj.is_charge
      }
      else {
        this.is_charge = false;
      }
      if (initObj.hasOwnProperty('tempareture')) {
        this.tempareture = initObj.tempareture
      }
      else {
        this.tempareture = 0.0;
      }
      if (initObj.hasOwnProperty('relative_humidity')) {
        this.relative_humidity = initObj.relative_humidity
      }
      else {
        this.relative_humidity = 0.0;
      }
      if (initObj.hasOwnProperty('input_io')) {
        this.input_io = initObj.input_io
      }
      else {
        this.input_io = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('output_io')) {
        this.output_io = initObj.output_io
      }
      else {
        this.output_io = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('relay_status')) {
        this.relay_status = initObj.relay_status
      }
      else {
        this.relay_status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motor_speed]
    bufferOffset = _arraySerializer.float64(obj.motor_speed, buffer, bufferOffset, null);
    // Serialize message field [crash]
    bufferOffset = _arraySerializer.int8(obj.crash, buffer, bufferOffset, null);
    // Serialize message field [cliff]
    bufferOffset = _arraySerializer.int8(obj.cliff, buffer, bufferOffset, null);
    // Serialize message field [ultrasound]
    bufferOffset = _arraySerializer.float32(obj.ultrasound, buffer, bufferOffset, null);
    // Serialize message field [smoke]
    bufferOffset = _serializer.int8(obj.smoke, buffer, bufferOffset);
    // Serialize message field [power_voltage]
    bufferOffset = _serializer.float32(obj.power_voltage, buffer, bufferOffset);
    // Serialize message field [is_charge]
    bufferOffset = _serializer.bool(obj.is_charge, buffer, bufferOffset);
    // Serialize message field [tempareture]
    bufferOffset = _serializer.float32(obj.tempareture, buffer, bufferOffset);
    // Serialize message field [relative_humidity]
    bufferOffset = _serializer.float32(obj.relative_humidity, buffer, bufferOffset);
    // Check that the constant length array field [input_io] has the right length
    if (obj.input_io.length !== 4) {
      throw new Error('Unable to serialize array field input_io - length must be 4')
    }
    // Serialize message field [input_io]
    bufferOffset = _arraySerializer.int8(obj.input_io, buffer, bufferOffset, 4);
    // Check that the constant length array field [output_io] has the right length
    if (obj.output_io.length !== 7) {
      throw new Error('Unable to serialize array field output_io - length must be 7')
    }
    // Serialize message field [output_io]
    bufferOffset = _arraySerializer.int8(obj.output_io, buffer, bufferOffset, 7);
    // Serialize message field [relay_status]
    bufferOffset = _serializer.bool(obj.relay_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarData
    let len;
    let data = new CarData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_speed]
    data.motor_speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [crash]
    data.crash = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [cliff]
    data.cliff = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [ultrasound]
    data.ultrasound = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [smoke]
    data.smoke = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [power_voltage]
    data.power_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_charge]
    data.is_charge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tempareture]
    data.tempareture = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_humidity]
    data.relative_humidity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [input_io]
    data.input_io = _arrayDeserializer.int8(buffer, bufferOffset, 4)
    // Deserialize message field [output_io]
    data.output_io = _arrayDeserializer.int8(buffer, bufferOffset, 7)
    // Deserialize message field [relay_status]
    data.relay_status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.motor_speed.length;
    length += object.crash.length;
    length += object.cliff.length;
    length += 4 * object.ultrasound.length;
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rei_robot_base/CarData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '857f5bd49eb52154124a6a34972c8da9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64[] motor_speed
    int8[] crash
    int8[] cliff
    float32[] ultrasound
    int8 smoke
    float32 power_voltage
    bool is_charge
    float32 tempareture
    float32 relative_humidity
    int8[4] input_io
    int8[7] output_io
    bool relay_status
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motor_speed !== undefined) {
      resolved.motor_speed = msg.motor_speed;
    }
    else {
      resolved.motor_speed = []
    }

    if (msg.crash !== undefined) {
      resolved.crash = msg.crash;
    }
    else {
      resolved.crash = []
    }

    if (msg.cliff !== undefined) {
      resolved.cliff = msg.cliff;
    }
    else {
      resolved.cliff = []
    }

    if (msg.ultrasound !== undefined) {
      resolved.ultrasound = msg.ultrasound;
    }
    else {
      resolved.ultrasound = []
    }

    if (msg.smoke !== undefined) {
      resolved.smoke = msg.smoke;
    }
    else {
      resolved.smoke = 0
    }

    if (msg.power_voltage !== undefined) {
      resolved.power_voltage = msg.power_voltage;
    }
    else {
      resolved.power_voltage = 0.0
    }

    if (msg.is_charge !== undefined) {
      resolved.is_charge = msg.is_charge;
    }
    else {
      resolved.is_charge = false
    }

    if (msg.tempareture !== undefined) {
      resolved.tempareture = msg.tempareture;
    }
    else {
      resolved.tempareture = 0.0
    }

    if (msg.relative_humidity !== undefined) {
      resolved.relative_humidity = msg.relative_humidity;
    }
    else {
      resolved.relative_humidity = 0.0
    }

    if (msg.input_io !== undefined) {
      resolved.input_io = msg.input_io;
    }
    else {
      resolved.input_io = new Array(4).fill(0)
    }

    if (msg.output_io !== undefined) {
      resolved.output_io = msg.output_io;
    }
    else {
      resolved.output_io = new Array(7).fill(0)
    }

    if (msg.relay_status !== undefined) {
      resolved.relay_status = msg.relay_status;
    }
    else {
      resolved.relay_status = false
    }

    return resolved;
    }
};

module.exports = CarData;
