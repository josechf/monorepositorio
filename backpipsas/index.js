module.exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: "compa llegaron las pipsas!!!!!!",
        input: event,
      },
      null,
      2
    ),
  };
};
