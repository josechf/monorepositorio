module.exports.handler = async (event) => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: "llegaron las pipsas blanca",
        input: event,
      },
      null,
      2
    ),
  };
};
